import 'package:flutter/material.dart';
import 'package:hello_world/navigation_multiplePage/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //stack method: push Replacement -> gabisa return ke page login lagi 
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainMultiPage();
              }));
            },
            child: Text('Login Here')),
      ),
    );
  }
}
