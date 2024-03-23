import 'package:flutter/material.dart';

class animatedContainer2Widget extends StatefulWidget {
  const animatedContainer2Widget({super.key});

  @override
  State<animatedContainer2Widget> createState() =>
      _animatedContainer2WidgetState();
}

class _animatedContainer2WidgetState extends State<animatedContainer2Widget> {
  //variable to control width of the container
  //_ means private identifiers
  //extends : inheritance,
  double _width = 100.0;

  void _toggleWidth() {
    setState(() {
      _width = _width == 100.0 ? 200.0 : 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
  }
}
