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
              margin: EdgeInsets.only(bottom: 120),
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
              height: 120,
              width: ww,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            margin: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              'Selected Items ' + '(' + '3' + ')',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 15, top: 15),
                            child: Text(
                              'Total: ' + 'USD ' + '3652.36',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    semanticContainer: true,
                    elevation: 15,
                    shadowColor: Colors.redAccent,
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
                        alignment: Alignment.center,
                        width: 200,
                        height: 45,
                        child: Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
