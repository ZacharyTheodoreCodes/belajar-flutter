import 'package:flutter/material.dart';
import 'package:hello_world/box_decoration.dart';
import 'package:hello_world/sizeBox.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Pertamaku'),
      ),
      //body: BoxyDecoration(),
      body: const SizeBoxy(),
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
