import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/page/appbar_page.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pdf extends StatelessWidget {
  Pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar_normalpage(
              judul: 'apa',
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width,
              // height: 500,
              height: 600,
              margin: EdgeInsets.all(20),
              // padding: EdgeInsets.all(20),
              child: Container(
                child: PDFView(
                  filePath: 'assets/pdf/burdah.pdf',
                  defaultPage: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
