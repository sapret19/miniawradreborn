import 'package:flutter/material.dart';
import 'package:miniawradreborn/home.dart';
import 'package:miniawradreborn/page/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
