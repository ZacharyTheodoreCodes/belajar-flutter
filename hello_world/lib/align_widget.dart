import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      //alignment: Alignment(-0.5, -1),
      alignment: Alignment(0, 0),
      child: SizedBox(
        width: 300,
        child: Text(
          "It doesn't mater how slowly you go as long as you do not stop. - Confucius",
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
