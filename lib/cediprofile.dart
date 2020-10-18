import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var hh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 65,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(209, 12, 22, 1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                  )),
                  Card(
                    margin: EdgeInsets.only(top: 80, left: 20),
                    semanticContainer: true,
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            'images/4.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 80),
                    child: Text(
                      'Rachel',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 110),
                    child: Text(
                      ' Van Rensburg',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 20,
              ),
              semanticContainer: true,
              color: Colors.white,
              elevation: 30,
              shadowColor: Color.fromRGBO(100, 100, 100, 0.2),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 360,
                  height: 95,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        alignment: Alignment.topLeft,
                        height: 30,
                        child: Text(
                          'Your Orders',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 20,
              ),
              semanticContainer: true,
              elevation: 30,
              color: Color.fromRGBO(209, 12, 22, 1),
              shadowColor: Colors.redAccent,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 400,
                  height: 230,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20),
                        alignment: Alignment.topLeft,
                        height: 30,
                        child: Text(
                          'Payment Methods',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 250, top: 15),
                        height: 45,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        height: 30,
                        child: Text(
                          '4583   1243   5672   2139',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white54),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 25,
              ),
              semanticContainer: true,
              elevation: 30,
              shadowColor: Color.fromRGBO(100, 100, 100, 0.2),
              color: Color.fromRGBO(0, 0, 25, 1),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 360,
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Opacity(
                          opacity: 0.4,
                          child: Container(
                            height: 100,
                            width: 220,
                            child: Image.asset('images/map.png'),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, top: 10),
                            alignment: Alignment.topLeft,
                            height: 30,
                            child: Text(
                              'Shipping',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Divider(),
            Card(
              margin: EdgeInsets.only(
                top: 20,
              ),
              semanticContainer: true,
              elevation: 30,
              shadowColor: Color.fromRGBO(100, 100, 100, 0.2),
              //color: Color.fromRGBO(180, 167, 0, 1),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                    width: 360,
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 15,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Wish List',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 20,
              ),
              semanticContainer: true,
              elevation: 0,
              color: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Text(
                          'Coupons and Vouchers',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 2,
              ),
              semanticContainer: true,
              elevation: 0,
              color: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Text(
                          'Account Settings',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 2,
              ),
              semanticContainer: true,
              elevation: 0,
              color: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
