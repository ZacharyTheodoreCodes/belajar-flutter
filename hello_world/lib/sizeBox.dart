import 'package:flutter/material.dart';

/**
 * Sizedbox: widget yang tak terlihat, buat setting text (height dan weightnya)
 * 
 */
class SizeBoxy extends StatelessWidget {
  const SizeBoxy({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildSizedBox('Belajar Textbox'),
          buildSizedBox('Ini Pake Sizedbox yaa, welcome to Sizebox tutorial'),
          buildSizedBox('Sizedbox bisa direplace container juga')
        ],
      ),
    );
  }

  //helper method, menerima text, return Widget
  Widget buildSizedBox(String text) {
    return SizedBox(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
