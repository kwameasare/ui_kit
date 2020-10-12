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
    var ww = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 100),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: AppData.cedicart
                    .map((post) => CartElement(
                          cedicart_mod: post,
                        ))
                    .toList(),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: ww,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'Selected Items ' + '(' + '3' + ')',
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'Total: ' + 'USD' + '3652.36',
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
