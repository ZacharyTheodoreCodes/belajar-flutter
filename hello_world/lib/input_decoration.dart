import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputDecorWidget extends StatefulWidget {
  const InputDecorWidget({super.key});

  @override
  State<InputDecorWidget> createState() => _InputDecorWidgetState();
}

class _InputDecorWidgetState extends State<InputDecorWidget> {
//Take value from input field
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
                hintText: "Write Something Here",
                hintStyle: TextStyle(fontWeight: FontWeight.w100)),
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
            cursorColor: Colors.blue,
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) =>
                  TextEditingValue(text: newValue.text.toUpperCase()))
            ],
            //Jadiin value yang diinput sebagai state
            onChanged: (value) => setState(() {
              textEditingController.text = value;
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textEditingController.text.isNotEmpty
                  ? textEditingController.text
                  : 'Please Write Something',
              textDirection: TextDirection.ltr,
            ),
          )
        ],
      ),
    );
  }
}
