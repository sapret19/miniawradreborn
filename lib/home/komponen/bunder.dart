import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/page.dart';

class bunder extends StatefulWidget {
  final String? text;
  final String? icon;
  final String? rute;

  bunder({
    this.text,
    this.icon,
    this.rute,
    super.key,
  });

  @override
  State<bunder> createState() => _bunderState();
}

class _bunderState extends State<bunder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed("${widget.rute}");
          },
          child: Container(
            width: 73,
            height: 73,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 39, 110, 176).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 19,
                      offset: Offset(0, 2))
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 84, 181, 246),
                      Color.fromARGB(255, 39, 110, 176),
                    ]),
                shape: BoxShape.circle),
            child: Image.asset(
              'assets/images/${widget.icon}',
              scale: 12,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("${widget.text}",
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ))
      ],
    );
  }
}
