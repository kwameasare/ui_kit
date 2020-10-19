import 'package:flutter/material.dart';
import 'package:ui_kit/category_mod.dart';

class CategoryElement extends StatefulWidget {
  final CatMod cMod;

  const CategoryElement(this.cMod);
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
      child: new Card(
        margin: EdgeInsets.only(bottom: 50, top: 25),
        semanticContainer: true,
        color: model.isSelected ? Colors.blueAccent : Colors.transparent,
        elevation: 30,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: new InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: new Container(
              width: 80,
              height: 120,
              child: new Stack(
                fit: StackFit.expand,
                children: [
                  new Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      model.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Text(model.ttl,
                      style: new TextStyle(
                          color: model.isSelected ? Colors.white : Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                ],
              )),
        ),
      ),
    );
  }
}
