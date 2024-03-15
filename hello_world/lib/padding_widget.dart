import 'package:flutter/material.dart';

/**
 * 
 * Padding: ukurannya lebih kecil daripada Container karna cuma punya 1 properti jadi lebih irit memori
 * memiliki const constructor, jadi bisa digunakan berkali-kali untuk pointing ke objek yang sama.
 */
class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Lorem'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Ipsum'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Dolor'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Sit'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Text('Amet'),
        ),
      ],
    );
  }
}
