import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      child: Wrap(
          alignment: WrapAlignment.center,
          //runAlignment -> alignment widget secara crossAxis
          runAlignment: WrapAlignment.end,
          spacing: 10,
          runSpacing: 20,
          children: List.generate(
              8,
              (index) => Container(
                    width: 100,
                    height: 200,
                    child: Text(
                      index as String,
                      style: const TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ))),
    );
  }
}
