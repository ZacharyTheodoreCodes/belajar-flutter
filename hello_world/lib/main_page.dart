import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Pertamaku'),
        ),
        //widget center
        // body: const Center(
        //   child: Text("Hello World!"),
        // ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hello world"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('Hi World'), Text('Hola World')],
            ),
            Text("Another Hello")
          ],
        ));
  }
}
