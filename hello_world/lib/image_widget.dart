import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(8.0),
      color: Colors.red.shade300,
      // child: const Image(
      //   image: NetworkImage(
      //     'https://press.tiffany.com/wp-content/uploads/02_0525_v4_QC_R600-1095x900.jpg',
      //   ),
      //   fit: BoxFit.contain,
      //   repeat: ImageRepeat.repeat,
      // ),
      child: Image(
        image: AssetImage("assets/sulwhasoo-blackpink-rose-5.jpeg"),
        fit: BoxFit.contain,
        repeat: ImageRepeat.repeat,
      ),
    ));
  }
}
