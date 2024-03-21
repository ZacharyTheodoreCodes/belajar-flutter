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
  int counter = 1;
  List dataKeSekian = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    dataKeSekian.add(Text('Data ke- ${counter.toString()}'));
                    counter++;
                    print(dataKeSekian);
                  });
                },
                child: Text('tambah data')),
            ElevatedButton(onPressed: null, child: Text('hapus data'))
          ],
        ),
        Column(
          children: dataKeSekian,
        )
      ],
    );
  }
}
