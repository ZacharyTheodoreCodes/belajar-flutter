import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

//class statenya
class _MyWidgetState extends State<MyWidget> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: GoogleFonts.poppins(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //setState: agar dia jadi state
                setState(() {
                  number++;
                });
                log('$number');
              },
              child: const Text('Increment')),
          ElevatedButton(
              onPressed: () {
                //setState: agar dia jadi state
                setState(() {
                  number = 0;
                });
                log('$number');
              },
              child: const Text('Reset'))
        ],
      ),
    );
  }
}
