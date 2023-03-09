import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/page/appbar_page.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class page extends StatelessWidget {
  final String judulpage;
  final String pdfpage;
  page({super.key, required this.judulpage, required this.pdfpage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar_normalpage(
              judul: '${judulpage}',
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
                child: SfPdfViewer.asset(
                  'assets/pdf/${pdfpage}',
                  enableDoubleTapZooming: true,
                  pageSpacing: 0,
                  initialZoomLevel: 0,
                  pageLayoutMode: PdfPageLayoutMode.continuous,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
