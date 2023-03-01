import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/page/appbar_page.dart';

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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 153, 153, 153)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
