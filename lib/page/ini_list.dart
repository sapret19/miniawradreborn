import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/single_list.dart';

class list_view extends StatelessWidget {
  list_view({
    super.key,
  });

  List ini = [
    {'Judul': 'Dalail Ahad', "pdf": 'assets/pdf/dalail ahad.pdf'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dalailul Khoirot'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        Map dalail = ini[index];
        return ListTile(
          leading: Text(
            "${index + 1}",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.blue),
          ),
          title: Text("${dalail['Judul']}"),
        );
      }),
    );
  }
}
