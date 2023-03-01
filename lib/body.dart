import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:miniawradreborn/page/page.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class body extends StatefulWidget {
  const body({
    super.key,
  });

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 25.h,
            width: 100.h,
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
          ),
          Container(
            height: 692,
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(0, -50, 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55))),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // tawassul
                    GestureDetector(
                      onTap: () {
                        Get.to(page());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 40),
                        height: 100,
                        width: 156,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.bottomRight,
                                image: ExactAssetImage(
                                    'assets/images/tawassul.png',
                                    scale: 0.7)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 84, 181, 246),
                                  Color.fromARGB(255, 39, 110, 176),
                                ]),
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(18))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                  // EdgeInsets.only(left: 20, top: 15, right: 30),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/tawassul.png',
                                              scale: 2)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Tawassul',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: 40),
                    //   height: 100,
                    //   width: 156,
                    //   decoration: const BoxDecoration(
                    //       image: DecorationImage(
                    //           image: ExactAssetImage(
                    //               'assets/images/kotakan.png'))),
                    // ),
                    SizedBox(
                      width: 30,
                    ),
                    // birrul walidayn
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/birrul.png',
                                  scale: 0.7)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                      'assets/images/birrul.png',
                                    )),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Birrul Walidayn',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Pembatas ROW
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Yasin & tahlil
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/yasin.png',
                                  scale: 1.2)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/yasin.png',
                                            scale: 3)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Yasin & Tahlil',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // Istighosah
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage(
                                  'assets/images/istighosah.png',
                                  scale: 1.4)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/istighosah.png',
                                            scale: 4)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Istighosah',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Pembatas ROW bawahan istighosah
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Waqiah
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/waqiah.png',
                                  scale: 2.7)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/waqiah.png',
                                            scale: 7)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Al-Waqiah',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // Burdah
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/burdah.png',
                                  scale: 1.2)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/burdah.png',
                                            scale: 3)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Burdah',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Pembatas ROW Bawahan Waqiah dan Burdah
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Diba
                    Container(
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/diba.png',
                                  scale: 1.4)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/diba.png',
                                            scale: 3)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Diba',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // Sabul Munjiyat
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/sabul.png',
                                  scale: 0.3)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/sabul.png',
                                            scale: 0.9)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Sabul Munjiyat',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Pembatas ROW Bawahan Diba dan sabul
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dalail
                    Container(
                      // margin: EdgeInsets.only(top: 40),
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/dalail.png',
                                  scale: 2.3)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/dalail.png',
                                            scale: 6)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Dalail',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // Kitab-kitab
                    Container(
                      height: 100,
                      width: 156,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: ExactAssetImage('assets/images/kitab.png',
                                  scale: 1.3)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 84, 181, 246),
                                Color.fromARGB(255, 39, 110, 176),
                              ]),
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(18))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 13, 45, 0),
                                // EdgeInsets.only(left: 20, top: 15, right: 30),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/kitab.png',
                                            scale: 3)),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Kitab-kitab',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(19, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
