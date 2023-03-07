import 'package:flutter/material.dart';
import 'package:miniawradreborn/home/home_screen.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/ini_list.dart';
import 'package:miniawradreborn/page/list_page.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/single_list.dart';

Map<String, WidgetBuilder> get rute {
  return <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/tawassul": (BuildContext context) =>
        page(judulpage: "Tawassul", pdfpage: "tawassul.pdf"),
    "/birrul": (BuildContext context) =>
        page(judulpage: "Birrul Walidayn", pdfpage: "lamiyah.pdf"),
    "/yasin": (BuildContext context) =>
        page(judulpage: "Yasin & Tahlil", pdfpage: "lamiyah.pdf"),
    "/istighosah": (BuildContext context) =>
        page(judulpage: "Istighosah", pdfpage: "tawassul.pdf"),
    "/waqiah": (BuildContext context) =>
        page(judulpage: "Al-Waqiah", pdfpage: "lamiyah.pdf"),
    "/burdah": (BuildContext context) =>
        page(judulpage: "Burdah", pdfpage: "lamiyah.pdf"),
    "/diba": (BuildContext context) =>
        page(judulpage: "Diba", pdfpage: "tawassul.pdf"),
    "/sabul": (BuildContext context) =>
        page(judulpage: "Sabul Munjiyat", pdfpage: "lamiyah.pdf"),
    "/dalail": (BuildContext context) => list(),
    "/kitab": (BuildContext context) => grid_page(),
    // "/coba": (BuildContext context) => single_list(),
  };
}
