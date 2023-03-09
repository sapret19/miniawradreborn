import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/home/home_screen.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/list_page.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/tabbar_sabul.dart';
import 'package:miniawradreborn/page/tabbar_waqiah.dart';
import 'package:miniawradreborn/page/tabbar_yasin.dart';
import 'package:miniawradreborn/pdf.dart';
import 'package:miniawradreborn/rute.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Mini Awrad Santri',
        theme: ThemeData(),
        home: Pdf(),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: rute,
      );
    });
  }
}
