import 'package:flutter/material.dart';

/**
 * 
 * textAlign: rata kiri, tengah, atau justify
 * 
 */

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 150,
        child: Text(
          //kalau mau ada widthnya pakai sizedBox
          "Hellow hellow hellow i'm Zachary",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              //backgroundColor: Colors.red,
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
              ],
              //letterSpacing: 5,
              //wordSpacing: 5,
              decoration: TextDecoration.underline,
              decorationColor: Colors.orange,
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 2),
        ),
      ),
    );
  }
}
