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
              backgroundColor: Colors.red,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(blurRadius: 5, color: Colors.black, offset: Offset(3, 3))
              ]),
        ),
      ),
    );
  }
}
