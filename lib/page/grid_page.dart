import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniawradreborn/page/appbar_page.dart';
import 'package:get/get.dart';

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: StaggeredDualView(
                      aspectRatio: 0.8,
                      spacing: 30,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 8,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Image.asset('assets/images/1.jpg')),
                                Expanded(
                                    child: Text(
                                  'Badrun Bada',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ))
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 1),
                ))
          ],
        ),
      ),
    );
  }
}

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.spacing = 0.0,
    this.aspectRatio = 0.5,
  });
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double spacing;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        return OverflowBox(
          maxWidth: width,
          minWidth: width,
          maxHeight: height,
          minHeight: height,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: aspectRatio,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing),
            itemBuilder: (context, index) {
              return Transform.translate(
                  offset: Offset(0.0, index.isOdd ? 100 : 0.0),
                  child: itemBuilder(context, index));
            },
          ),
        );
      },
    );
  }
}
