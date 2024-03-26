import 'package:flutter/material.dart';
import 'package:hello_world/navigation_multiplePage/login_page.dart';

import 'package:hello_world/navigation_multiplePage/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
    //return const MaterialApp(home: BoxyDecoration());
  }
}
