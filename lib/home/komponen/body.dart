import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/home/komponen/bunder.dart';
import 'package:miniawradreborn/home/komponen/head.dart';
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bunder(
                        icon: "tawassul.png",
                        text: "Tawassul",
                        rute: "/tawassul",
                      ),
                      bunder(
                        icon: "birrul.png",
                        text: "Birrul Walidayn",
                        rute: "/birrul",
                      ),
                      bunder(
                        icon: "yasin.png",
                        text: "Yasin & Tahlil",
                        rute: "/yasintahlil",
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
                        rute: "/istighosah",
                      ),
                      bunder(
                        icon: "waqiah.png",
                        text: "Al-Waqiah",
                        rute: "/waqiah",
                      ),
                      bunder(
                        icon: "burdah.png",
                        text: "Burdah",
                        rute: "/burdah",
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
                        rute: "/diba",
                      ),
                      bunder(
                        icon: "sabul.png",
                        text: "Sabul Munjiyat",
                        rute: "/sabul",
                      ),
                      bunder(
                        icon: "dalail.png",
                        text: "Dalail",
                        rute: "/dalail",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  bunder(
                    icon: "kitab.png",
                    text: "Kitab Syair",
                    rute: "/kitab",
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
