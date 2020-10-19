import 'package:flutter/material.dart';
import 'package:ui_kit/category_mod.dart';

class CategoryElement extends StatefulWidget {
  final CatMod cMod;

  const CategoryElement({Key key, this.cMod}) : super(key: key);
  @override
  _CategoryElementState createState() => _CategoryElementState();
}

class _CategoryElementState extends State<CategoryElement>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  CatMod model;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    model = widget.cMod;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 80,
      child: Card(
        margin: EdgeInsets.only(bottom: 50, top: 25),
        semanticContainer: true,
        c
        elevation: 30,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
              width: 80,
              height: 120,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      model.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
