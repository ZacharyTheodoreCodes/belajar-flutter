import 'dart:math';

import 'package:flutter/material.dart';

class animatedContainerWidget extends StatefulWidget {
  const animatedContainerWidget({super.key});

  @override
  State<animatedContainerWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<animatedContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedContainer(
      duration: Duration(seconds: 1),
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
      width: 50.0 + Random().nextInt(201),
      height: 50.0 + Random().nextInt(101),
    ));
  }
}
