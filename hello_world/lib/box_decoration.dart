import 'package:flutter/material.dart';

class BoxyDecoration extends StatelessWidget {
  const BoxyDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Box Decoration',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
          
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(10.0)),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bW9kZWx8ZW58MHx8MHx8fDA%3D'),
                      
                  )),
        ),
      ),
    );
  }
}
