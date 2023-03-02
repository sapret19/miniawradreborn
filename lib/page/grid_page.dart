import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/page/appbar_page.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/tabbar_page.dart';

class grid_page extends StatefulWidget {
  const grid_page({super.key});

  @override
  State<grid_page> createState() => _grid_pageState();
}

class _grid_pageState extends State<grid_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar_normalpage(
              judul: 'Kitab-Kitab',
            ),
            Container(
              child: Column(
                children: [
                  input_kitab(
                      page_kitab_kiri: page(judulpage: 'Badrun Bada', pdfpage: 'coba.pdf'),
                      cover_kitab_kiri: '1.jpg',
                      nama_kitab_kiri: 'Badrun Bada',
                      page_kitab_kanan: page(judulpage: 'Sembarang', pdfpage: 'coba.pdf'),
                      cover_kitab_kanan: '1.jpg',
                      nama_kitab_kanan: 'Pokok kitab'),
                  input_kitab(
                      page_kitab_kiri: page(judulpage: 'Badrun Bada', pdfpage: 'coba.pdf'),
                      cover_kitab_kiri: '1.jpg',
                      nama_kitab_kiri: 'Badrun Bada',
                      page_kitab_kanan: page(judulpage: 'pokok', pdfpage: 'coba.pdf'),
                      cover_kitab_kanan: '1.jpg',
                      nama_kitab_kanan: 'Pokok kitab')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class input_kitab extends StatelessWidget {
  final page_kitab_kiri;
  final String cover_kitab_kiri;
  final String nama_kitab_kiri;
  final page_kitab_kanan;
  final String cover_kitab_kanan;
  final String nama_kitab_kanan;
  const input_kitab({
    super.key,
    required this.page_kitab_kiri,
    required this.cover_kitab_kiri,
    required this.nama_kitab_kiri,
    required this.page_kitab_kanan,
    required this.cover_kitab_kanan,
    required this.nama_kitab_kanan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kitab_kiri(
              page_kitab_kiri: page_kitab_kiri,
              cover_kitab_kiri: cover_kitab_kiri,
              nama_kitab_kiri: nama_kitab_kiri),
          SizedBox(
            width: 40,
          ),
          kitab_kanan(
              page_kitab_kanan: page_kitab_kanan,
              cover_kitab_kanan: cover_kitab_kanan,
              nama_kitab_kanan: nama_kitab_kanan),
        ],
      ),
    );
  }
}

class kitab_kanan extends StatelessWidget {
  const kitab_kanan({
    super.key,
    required this.page_kitab_kanan,
    required this.cover_kitab_kanan,
    required this.nama_kitab_kanan,
  });

  final page_kitab_kanan;
  final String cover_kitab_kanan;
  final String nama_kitab_kanan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page_kitab_kanan);
      },
      child: Container(
        width: 100,
        height: 156,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 84, 181, 246),
                  Color.fromARGB(255, 39, 110, 176),
                ]),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 0),
                  color: Color.fromARGB(255, 143, 143, 143),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 72,
              height: 96,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  'assets/images/${cover_kitab_kanan}',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 8, 3, 10),
              child: Text(
                '${nama_kitab_kanan}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class kitab_kiri extends StatelessWidget {
  const kitab_kiri({
    super.key,
    required this.page_kitab_kiri,
    required this.cover_kitab_kiri,
    required this.nama_kitab_kiri,
  });

  final page_kitab_kiri;
  final String cover_kitab_kiri;
  final String nama_kitab_kiri;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page_kitab_kiri);
      },
      child: Container(
        width: 100,
        height: 156,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 84, 181, 246),
                  Color.fromARGB(255, 39, 110, 176),
                ]),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 0),
                  color: Color.fromARGB(255, 143, 143, 143),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 72,
              height: 96,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  'assets/images/${cover_kitab_kiri}',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 8, 3, 10),
              child: Text(
                '${nama_kitab_kiri}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
