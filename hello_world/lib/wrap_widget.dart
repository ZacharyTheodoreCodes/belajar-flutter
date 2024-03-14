import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      //wrap bisa jadi responsive design
      child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          verticalDirection: VerticalDirection.up,
          //runAlignment -> alignment widget secara crossAxis
          runAlignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 20,
          children: List.generate(
              8,
              (index) => Container(
                    width: 100,
                    height: index % 2 == 0 ? 150 : 100,
                    alignment: Alignment.center,
                    color: index % 2 == 0 ? Colors.red : Colors.blue,
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ))),
    );
  }
}
