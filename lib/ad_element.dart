import 'package:flutter/material.dart';

import 'ad_mod.dart';

class AdElement extends StatefulWidget {
  final AdMod adMod;

  AdElement({Key key, this.adMod}) : super(key: key);

  @override
  _AdElementState createState() => _AdElementState();
}

class _AdElementState extends State<AdElement> {
  AdMod model;
  @override
  void initState() {
    model = widget.adMod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var hh = MediaQuery.of(context).size.height;
    var ww = MediaQuery.of(context).size.width;
    return Container(
      height: 220,
      width: ww * .8,
      child: Card(
        margin: EdgeInsets.only(bottom: 40, left: 5, right: 5, top: 25),
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
              width: ww * .8,
              height: 200,
              child: Stack(
                fit: StackFit.expand,
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
