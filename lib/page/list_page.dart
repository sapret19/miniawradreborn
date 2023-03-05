import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class list_page extends StatefulWidget {
  const list_page({super.key});

  @override
  State<list_page> createState() => _list_pageState();
}

class _list_pageState extends State<list_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      leading: Text(
        "1",
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black),
      ),
      title: Text(
        'y',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black),
      ),
    ));
  }
}
