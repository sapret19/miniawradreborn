import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/bunder.dart';
import 'package:miniawradreborn/head.dart';
import 'package:http/http.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/tabbar_sabul.dart';
import 'package:miniawradreborn/page/tabbar_waqiah.dart';
import 'package:miniawradreborn/page/tabbar_yasin.dart';
import 'package:sizer/sizer.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          head(),
          Container(
            height: 692,
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(0, -45, 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55))),

            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bunder(
                        icon: "tawassul.png",
                        text: "Tawassul",
                        // halaman: "Tawassul",
                        // pdf: "tawassul.pdf",
                        rute: "/page1",
                      ),
                      bunder(
                        icon: "birrul.png",
                        text: "Birrul Walidayn",
                        // halaman: "Birrul Walidayn",
                        // pdf: "unwanul.pdf",
                        rute: "/page2",
                      ),
                      bunder(
                        icon: "yasin.png",
                        text: "Yasin & Tahlil",
                        // halaman: "Yasin & Tahlil",
                        // pdf: "Yasin",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bunder(
                        icon: "istighosah.png",
                        text: "Istighosah",
                        // halaman: "Istighosah",
                        // pdf: "coba.pdf",
                      ),
                      bunder(
                        icon: "waqiah.png",
                        text: "Al-Waqiah",
                        // halaman: "Waqiah",
                        // pdf: "maladzatul.pdf"
                      ),
                      bunder(
                        icon: "burdah.png",
                        text: "Burdah",
                        // halaman: "Burdah",
                        // pdf: "burdah.pdf",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bunder(
                        icon: "diba.png",
                        text: "Diba",
                        // halaman: "Diba",
                        // pdf: "lamiyah.pdf",
                      ),
                      bunder(
                        icon: "sabul.png",
                        text: "Sabul Munjiyat",
                      ),
                      bunder(
                        icon: "dalail.png",
                        text: "Dalail",
                        // halaman: "Dalailul Khoirat",
                        // pdf: "",

                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  bunder(
                    icon: "kitab.png",
                    text: "Kitab-kitab",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
