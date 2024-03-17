import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
            decoration: InputDecoration(
                hintText: "Write Something Here - ini hintText",
                hintMaxLines: 2,
                hintStyle: const TextStyle(
                    height: 3, fontWeight: FontWeight.w100, fontSize: 12),
                labelStyle: const TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                //declare labelText gaboleh barengan sama label
                //labelText: "Input something here",
                label: Container(
                  transform: Matrix4.translationValues(0, 0, 0),
                  padding: EdgeInsets.all(3),
                  color: Colors.red[200],
                  child: Text('Input Something Here - Ini label'),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                helperText: "Ini helper text",
                helperStyle: TextStyle(
                    color: Colors.red.shade200, fontWeight: FontWeight.bold),

                //Counter - hitung berapa kata yang sudah diinput
                counter: Container(
                  ),
                // counterText: '${textEditingController.text.length}/100',
                // counterStyle: const TextStyle(
                //     color: Colors.grey, fontWeight: FontWeight.normal)
                
                ),

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
