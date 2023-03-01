import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar_normalpage(),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 251, 251, 251)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SfPdfViewer.asset(
                'assets/pdf/coba.pdf',
                enableDoubleTapZooming: true,
                pageSpacing: 0,
                initialZoomLevel: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBar_normalpage extends StatelessWidget {
  const AppBar_normalpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 39, 110, 176),
              spreadRadius: 1,
              offset: Offset(0, 0),
              blurRadius: 10)
        ],
        image: DecorationImage(
            image: ExactAssetImage('assets/images/gerbangdrone.jpg'),
            fit: BoxFit.fitWidth,
            opacity: 230),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 84, 181, 246),
              Color.fromARGB(255, 39, 110, 176),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Back Button
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(17, 25, 0, 17),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 39, 110, 176),
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                      blurRadius: 6)
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('assets/images/back.png')),
              ),
            ),
          ),
          //Judul
          Container(
            margin: EdgeInsets.only(left: 17),
            child: Text(
              'Tawassul',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
