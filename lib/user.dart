import 'package:flutter/material.dart';

class profile_1 extends StatefulWidget {
  @override
  _profile_1State createState() => _profile_1State();
}

class _profile_1State extends State<profile_1> {
  @override
  Widget build(BuildContext context) {
    var ww = MediaQuery.of(context).size.width;
    var hh = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            height: hh * 0.35,
            child: Image(
              height: hh * 0.35,
              width: ww,
              image: AssetImage('images/'),
            ),
          )
        ],
      ),
    );
  }
}
