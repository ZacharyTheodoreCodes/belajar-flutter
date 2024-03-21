import 'package:flutter/material.dart';

/**
 * Bikin data ke-1,2,3 dst pakai for loop dan column 
 * Bikin raisedButton Tambah data & Hapus data -> dijadiin stateful 
 * diwrap ke ListView
 * Listview: bisa scrollable, kalau column engga, width dan heightnya akan maksimal
 * SingleChildScrollView: width dan heightnya menyesuaikan
 * 
 */
class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListViewWidget> {
  int counter = 0;
  List<Widget> generatedTextWidgets = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
              generatedTextWidgets.add(
                Text(
                  'Value: $counter',
                  style: TextStyle(fontSize: 20),
                ),
              );
            });
          },
          child: Text('Increment Counter'),
        ),
        SizedBox(
            height: 20),
        Column(
          children: generatedTextWidgets,
        ) // Adding some spacing between the button and the list
       // ...generatedTextWidgets, // Using spread operator to add all widgets
      ],
    );
  }
}
