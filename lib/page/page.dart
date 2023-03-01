import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';

import 'package:miniawradreborn/page/appbar_page.dart';

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
            AppBar_normalpage(
              judul: 'Tawassul',
            ),
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
