import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/page/appbar_page.dart';
import 'package:miniawradreborn/page/model_list.dart';
import 'package:miniawradreborn/page/single_list.dart';

class list extends StatelessWidget {
  final List<Model_list> Modellist = List.generate(
      nama.length, (index) => Model_list("${nama[index].toString()}"));

  final List<Model_pdf> Modelpdf = List.generate(
      pdf.length, (index) => Model_pdf('${pdf[index].toString()}'));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar_normalpage(judul: 'Dalailul Khoirot'),
            Container(
              margin: EdgeInsets.all(20),
              child: SizedBox(
                height: 500,
                child: ListView.separated(
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: Text(
                          "${index + 1}",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.blue),
                        ),
                        title: Text(
                          Modellist[index].nama,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => single_list(
                                  Modellist: Modellist,
                                  index: index,
                                  Modelpdf: Modelpdf)));
                        },
                      );
                    }),
                    separatorBuilder: ((context, index) {
                      return Container(
                        height: 1,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        color: Colors.blue,
                      );
                    }),
                    itemCount: nama.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> nama = [
  "Dalail Ahad",
  "Dalail Senin",
  "Dalail Selasa",
  "Dalail Rabu",
  "Dalail Kamis",
  "Dalail Jum'at",
  "Dalail Sabtu",
];

List<String> pdf = [
  "assets/pdf/dalail_ahad.pdf",
  "assets/pdf/dalail_senin.pdf",
  "assets/pdf/dalail_selasa.pdf",
  "assets/pdf/dalail_rabu.pdf",
  "assets/pdf/dalail_kamis.pdf",
  "assets/pdf/dalail_jumat.pdf",
  "assets/pdf/dalail_sabtu.pdf",
];
