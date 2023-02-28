import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Head extends StatefulWidget {
  const Head({super.key});

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 84, 181, 246),
        image: DecorationImage(
            image: ExactAssetImage(
              'assets/images/gerbangdrone.jpg',
            ),
            alignment: Alignment(0, -1),
            opacity: 220,
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 97,
            width: 282,
            // color:  Color.fromARGB(255, 84, 181, 246),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 84, 181, 246),
                      Color.fromARGB(255, 39, 110, 176),
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(33, 0, 0, 0).withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 19,
                      offset: Offset(0, 2))
                ]),
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  margin: EdgeInsets.only(left: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    image: DecorationImage(
                        image: ExactAssetImage(
                      'assets/images/head.png',
                    )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Pondok Pesantren',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    // SizedBox(height: 13),
                    Text(
                      'Annur II Al-Murtadlo',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Mini Awrad Santri',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
