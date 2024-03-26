import 'package:flutter/material.dart';
import 'package:hello_world/navigation_multiplePage/second_page.dart';

class MainMultiPage extends StatelessWidget {
  const MainMultiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //stack method: push Replacement
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
            child: Text('Go to second page')),
      ),
    );
  }
}
