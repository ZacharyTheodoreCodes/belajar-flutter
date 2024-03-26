import 'package:flutter/material.dart';

class MainMultiPage extends StatelessWidget {
  const MainMultiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: () {}, child: Text('Go to second page')),
      ),
    );
  }
}

/**
 * hello_world/lib/navigation_multiplePage
 */