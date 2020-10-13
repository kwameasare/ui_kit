import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ui_kit/cedishop.dart';
import 'package:ui_kit/home.dart';
import 'package:ui_kit/user_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(backgroundColor: Colors.white, fontFamily: 'Josefin'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
