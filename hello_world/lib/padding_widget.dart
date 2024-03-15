import 'package:flutter/material.dart';

/**
 * 
 * Padding: ukurannya lebih kecil daripada Container karna cuma punya 1 properti jadi lebih irit memori
 * memiliki const constructor, jadi bisa digunakan berkali-kali untuk pointing ke objek yang sama.
 Improve the code:
 -Bisa pakai wrap -> list.generate
 -Bisa pakai helper method, menerima String text
 
 */

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   color: Colors.red,
        //   child: Padding(
        //     padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
        //     child: Text('Lorem'),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
        //   child: Text('Ipsum'),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
        //   child: Text('Dolor'),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
        //   child: Text('Sit'),
        // ),
        // Padding(
        //   padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
        //   child: Text('Amet'),
        // ),
        buildPadding("Lorem"),
        buildPadding("Ipsum"),
        buildPadding("Dolor"),
        buildPadding("Sit"),
        buildPadding("Amet")
      ],
    );
  }

  Widget buildPadding(String text) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
      child: Text(text),
    );
  }
}
