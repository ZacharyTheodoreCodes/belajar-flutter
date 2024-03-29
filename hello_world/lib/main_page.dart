import 'package:flutter/material.dart';
import 'package:hello_world/align_widget.dart';
import 'package:hello_world/animated_container.dart';
import 'package:hello_world/animated_container2.dart';
import 'package:hello_world/box_decoration.dart';
import 'package:hello_world/font_study.dart';
import 'package:hello_world/icon_widget.dart';
import 'package:hello_world/image_widget.dart';
import 'package:hello_world/input_decoration.dart';
import 'package:hello_world/list_view_widget.dart';
import 'package:hello_world/padding_widget.dart';
import 'package:hello_world/sizeBox.dart';
import 'package:hello_world/stateless_stateful_widget.dart';
import 'package:hello_world/text_field_widget.dart';
import 'package:hello_world/text_widget.dart';
import 'package:hello_world/wrap_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Pertamaku'),
      ),
      //body: BoxyDecoration(),
      // body: const SizeBoxy(),
      //body: const TextWidget(),
      //body: const FontStudy(),
      // body: const MyWidget(),
      //body: const WrapWidget(),
      //body: const AlignWidget(),
      //body: const PaddingWidget(),
      //body: const IconWidget(),
      //body: const TextFieldWidget(),
      //body: const InputDecorWidget(),
      //body: const ListViewWidget(),
      //body: const animatedContainerWidget(),
      //body: const animatedContainer2Widget(),
      body: const ImageWidget(),

      //widget center

      // body: const Center(
      //   child: Text("Hello World!"),
      // ),

      //Column and row
      // body: const Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Text("Hello world"),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [Text('Hi World'), Text('Hola World')],
      //     ),
      //     Text("Another Hello")
      //   ],
      // )

      //Container
      // body: Column(
      //   children: [
      //     Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.red,
      //           margin: const EdgeInsets.symmetric(vertical: 8.0),
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             width: 100,
      //             height: 100,
      //             color: Colors.orange,
      //           ),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.blue,
      //         )
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.yellow,
      //         ),
      //   Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.green,
      //   )
      //         // ],
      //   ),
    );
  }
}
