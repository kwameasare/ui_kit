import 'package:flutter/material.dart';

import 'appdata.dart';
import 'cartelement.dart';

class CediCart extends StatefulWidget {
  @override
  _CediCartState createState() => _CediCartState();
}

class _CediCartState extends State<CediCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(

              // margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
              child: ListView(
            scrollDirection: Axis.vertical,
            children: AppData.cedicart
                .map((post) => CartElement(
                      cedicart_mod: post,
                    ))
                .toList(),
          )),
        ],
      ),
    );
  }
}
