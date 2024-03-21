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
  List<Widget> dataKeSekian = [];

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
                    if (counter > 0) {
                      dataKeSekian.removeWhere((element) =>
                          element is Text &&
                          element.data == 'Data sudah habis');
                    }
                  });
                },
                child: Text('tambah data')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter != 0) {
                      dataKeSekian.removeLast();
                      counter--;
                    } else {
                      //ERROR MSSG
                      // // Show error message if counter is already 0
                      // showDialog(
                      //   context: context,
                      //   builder: (context) => AlertDialog(
                      //     title: Text('Error'),
                      //     content: Text('Data sudah habis'),
                      //     actions: <Widget>[
                      //       TextButton(
                      //         onPressed: () {
                      //           Navigator.of(context).pop();
                      //         },
                      //         child: Text('OK'),
                      //       ),
                      //     ],
                      //   ),
                      // );

                      //SCAFFOLD MESSENGER
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: Text('Data sudah habis'),
                      //   ),
                      // );

                      //simple text
                      bool errorMsgExists = dataKeSekian.any((element) =>
                          element is Text &&
                          element.data == 'Data sudah habis');
                      //Kalau textnya belum ada baru kita add
                      if (!errorMsgExists) {
                        dataKeSekian.add(Text('Data sudah habis'));
                      }
                    }
                  });
                },
                child: Text('hapus data'))
          ],
        ),
        Column(
          children: dataKeSekian,
        )
      ],
    );
  }
}
