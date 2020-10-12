import 'package:flutter/material.dart';

import 'cedicartmod.dart';
import 'counter.dart';

class CartElement extends StatefulWidget {
  final Cartmod_model cedicart_mod;
  CartElement({Key key, this.cedicart_mod}) : super(key: key);

  @override
  _CartElementState createState() => _CartElementState();
}

class _CartElementState extends State<CartElement> {
  Cartmod_model model;
  @override
  void initState() {
    model = widget.cedicart_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Row(
        children: [
          Card(
            margin: EdgeInsets.only(top: 10, left: 20),
            semanticContainer: true,
            elevation: 15,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderOnForeground: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                  width: 80,
                  height: 140,
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Container(
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    model.ttl,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        model.shipping,
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        model.price,
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Counter(
                    initialValue: model.qty,
                    minValue: 0,
                    color: Color.fromRGBO(209, 12, 22, 1),
                    maxValue: double.infinity,
                    step: 1,
                    decimalPlaces: 0,
                    onChanged: (value) {
                      // get the latest value from here
                      setState(() {
                        model.qty = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 10, top: 50),
                child: Text(
                  model.price,
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Center(
                child: new Checkbox(
                  onChanged: (bool value) {
                    setState(() {
                      model.checked = value;
                    });
                  },
                  value: model.checked,
                  activeColor: Color.fromRGBO(209, 12, 22, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
