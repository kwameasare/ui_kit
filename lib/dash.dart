import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ad_element.dart';
import 'package:ui_kit/category_element.dart';

import 'appdata.dart';

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    var ww = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.001),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 15,
                  shadowColor: Colors.grey.shade50,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: ww * 0.75,
                    margin: EdgeInsets.only(
                      left: ww * 0.028,
                    ),
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
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: ww * .62,
                              child: Text('Find Product',
                                  style: TextStyle(color: Colors.grey))),
                          Icon(Icons.search, color: Colors.grey, size: 20)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Column(
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                height: 220.0,
                autoPlay: true,
                viewportFraction: 0.7,
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
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                        //highlightColor: Colors.red,
                        splashColor: Colors.blueAccent,
                        onTap: () {
                          setState(() {
                            AppData.catList.forEach(
                                (element) => element.isSelected = false);
                            AppData.catList[index].isSelected = true;
                          });
                        },
                        child: new CategoryElement(AppData.catList[index]));
                  }),
            )
          ],
        ),
      ],
    );
  }
}
