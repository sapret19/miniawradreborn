import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniawradreborn/home.dart';
import 'package:miniawradreborn/page/grid_page.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:miniawradreborn/page/tabbar_yasin.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const Home(),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: rute,
      );
    });
  }

//   Map<String, WidgetBuilder> get rute {
//     return <String, WidgetBuilder>{
//         "/home": (BuildContext context) => Home(),
//         "/satu": (BuildContext context) => grid_page(),
//         "/page1": (BuildContext context) =>
//             page(judulpage: "Tawassul", pdfpage: "tawassul.pdf"),
//         "/page2": (BuildContext context) =>
//             page(judulpage: "Birrul Walidayn", pdfpage: "lamiyah.pdf")
//       };
//   }
}
