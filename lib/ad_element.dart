import 'package:flutter/material.dart';

import 'cedicartmod.dart';

class AdElement extends StatefulWidget {
  final CartModel cedicart_mod;

  AdElement({Key key, this.cedicart_mod}) : super(key: key);

  @override
  _AdElementState createState() => _AdElementState();
}

class _AdElementState extends State<AdElement> {
  CartModel model;
  @override
  void initState() {
    model = widget.cedicart_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var hh = MediaQuery.of(context).size.height;
    var ww = MediaQuery.of(context).size.width;
    return Container(
      height: 220,
      child: Card(
        margin: EdgeInsets.only(right: 20, left: 20),
        semanticContainer: true,
        elevation: 20,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
              width: ww,
              height: 180,
              child: Stack(
                children: [
                  Image.asset(
                    model.image,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
