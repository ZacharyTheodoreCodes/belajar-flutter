import 'package:flutter/material.dart';
import 'package:hello_world/navigation_multiplePage/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //stack method: pop Replacement
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return MainMultiPage();
              }));
            },
            child: Text('Back')),
      ),
    );
  }
}
