import 'package:flutter/material.dart';
import 'package:miniawradreborn/home/home_screen.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/page.dart';

Map<String, WidgetBuilder> get rute {
  return <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/satu": (BuildContext context) => grid_page(),
    "/tawassul": (BuildContext context) =>
        page(judulpage: "Tawassul", pdfpage: "tawassul.pdf"),
    "/birrul": (BuildContext context) =>
        page(judulpage: "Birrul Walidayn", pdfpage: "lamiyah.pdf")
  };
}
