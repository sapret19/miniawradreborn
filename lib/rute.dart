import 'package:flutter/material.dart';
import 'package:miniawradreborn/home/home_screen.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/list_page.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/tabbar_diba.dart';
import 'package:miniawradreborn/page/tabbar_sabul.dart';
import 'package:miniawradreborn/page/tabbar_waqiah.dart';
import 'package:miniawradreborn/page/tabbar_yasin.dart';
import 'package:miniawradreborn/page/single_list.dart';
import 'package:miniawradreborn/pdf.dart';

Map<String, WidgetBuilder> get rute {
  return <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/kitab": (BuildContext context) => grid_page(),
    "/tawassul": (BuildContext context) =>
        page(judulpage: "Tawassul", pdfpage: "tawassul.pdf"),
    "/birrul": (BuildContext context) =>
        page(judulpage: "Birrul Walidayn", pdfpage: "birul.pdf"),
    "/yasintahlil": (BuildContext context) => Tabbar_yasin(),
    "/istighosah": (BuildContext context) =>
        page(judulpage: "Istighosah", pdfpage: "istighosah.pdf"),
    "/waqiah": (BuildContext context) => Tabbar_waqiah(),
    "/burdah": (BuildContext context) =>
        page(judulpage: "Burdah", pdfpage: "burdah.pdf"),
    "/diba": (BuildContext context) => Tabbar_diba(),
    "/sabul": (BuildContext context) => Tabbar_sabul(),
    "/dalail": (BuildContext context) => list(),
  };
}
