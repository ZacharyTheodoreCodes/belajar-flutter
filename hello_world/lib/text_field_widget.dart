import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
//Mengambil value dari input field
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextField(
            //obscureText: true,
            //obscuringCharacter: '*',
            //tambah placeholder
            decoration: const InputDecoration(
                hintText: "Write Something Here",
                hintStyle: TextStyle(fontWeight: FontWeight.normal)),
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
            cursorColor: Colors.red,
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) =>
                  TextEditingValue(text: newValue.text.toUpperCase()))
            ],
            //cuma jadiin valuenya sebagai state tanpa mengubah valuenya
            onChanged: (value) => setState(() {
              textEditingController.text = value;
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
