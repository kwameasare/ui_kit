import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ad_element.dart';

import 'appdata.dart';

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.001),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * 0.75,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.028,
                      right: MediaQuery.of(context).size.width * 0.028),
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //       blurRadius: 6.0,
                    //       color: Colors.grey.withOpacity(0.4),
                    //       spreadRadius: 5.0),
                    // ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('', style: TextStyle(color: Colors.grey)),
                        Icon(Icons.search, color: Colors.grey, size: 20)
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Container(
            margin: EdgeInsets.only(top: 30),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 220.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: AppData.adList
                  .map((post) => AdElement(
                        adMod: post,
                      ))
                  .toList(),
            )),
      ],
    );
  }
}
