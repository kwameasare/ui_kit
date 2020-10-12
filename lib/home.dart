import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_kit/myaccount.dart';
import 'package:ui_kit/chat.dart';
import 'package:ui_kit/explore.dart';
import 'package:ui_kit/myaccount.dart';

import 'cart.dart';
import 'dash.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController homeController,
      chatController,
      cartController,
      menuController,
      accountController,
      exploreController;
  PageController _pageController;
  int menuOpen;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    menuOpen = 0;
    homeController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    homeController.forward(from: 99);
    chatController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );

    cartController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );

    accountController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );

    exploreController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );

    menuController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 1500),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var hh = MediaQuery.of(context).size.height;
    var ww = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        //     Side menu(Drawer)
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text(
                'Tech Space',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.all_inclusive),
              title: Text('Infinite Feature'),
            ),
            ListTile(
              leading: Icon(Icons.watch_later),
              title: Text('Infinite activity'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: PageView(
              controller: _pageController,
              physics: new NeverScrollableScrollPhysics(),
              onPageChanged: (ind) {},
              children: <Widget>[
                Dash(),
                Explore(),
                Cart(),
                Chat(),
                MyAccount(),
              ],
            ),
          ),
          Positioned(
              top: 40,
              right: 15,
              child: InkWell(
                customBorder: CircleBorder(),
                onTap: () {
                  if (menuOpen == 0) {
                    menuController.animateTo(
                      0.5,
                    );
                    menuOpen = 1;
                  } else {
                    menuController.animateTo(
                      0.0,
                    );
                    menuOpen = 0;
                  }
                },
                child: Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(8),
                  child: Lottie.asset(
                    'assets/menu.json',
                    height: 24,
                    width: 24,
                    controller: menuController,
                    //fit: BoxFit.fitHeight
                  ),
                ),
              )),
        ],
      ),
      //
      //
      //
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[Lottie.asset('assets/social_dialog.json')],
      //   ),
      // ),

      // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          width: ww,
          height: 60,
          child: bottomBar(ww),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFE63426),
        child: Icon(Icons.add),
        elevation: 30,
        mini: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          // Get.to(MyHomePage());
          _pageController.jumpToPage(2);
          chatController.reset();
          homeController.reset();
          accountController.reset();
          exploreController.reset();
          print('yes');
        },
      ),
    );
  }

  Widget bottomBar(double ww) {
    return Container(
      width: ww,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // height: 60,
            child: InkWell(
              child: Lottie.asset('assets/home.json',
                  // height: 80, width: 80,
                  controller: homeController),
              onTap: () {
                double duration = 3.1;
                homeController.forward(from: 0);
                chatController.reset();
                cartController.reset();
                accountController.reset();
                exploreController.reset();
                _pageController.jumpToPage(0);
              },
            ),
          ),
          Container(
            // height: 60,
            child: InkWell(
              child: Lottie.asset('assets/home.json',
                  // height: 80, width: 80,
                  controller: exploreController),
              onTap: () {
                double duration = 3.1;
                exploreController.forward(from: 0);
                chatController.reset();
                cartController.reset();
                accountController.reset();
                homeController.reset();
                _pageController.jumpToPage(1);
              },
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Container(
            // height: 60,
            child: InkWell(
              child: Lottie.asset('assets/home.json',
                  // height: 80, width: 80,
                  controller: chatController),
              onTap: () {
                double duration = 3.1;
                chatController.forward(from: 0);
                homeController.reset();
                cartController.reset();
                accountController.reset();
                exploreController.reset();
                _pageController.jumpToPage(3);
              },
            ),
          ),
          Container(
            // height: 60,
            child: InkWell(
              child: Lottie.asset('assets/home.json',
                  // height: 80, width: 80,
                  controller: accountController),
              onTap: () {
                double duration = 3.1;
                accountController.forward(from: 0);
                chatController.reset();
                cartController.reset();
                homeController.reset();
                exploreController.reset();
                _pageController.jumpToPage(4);
              },
            ),
          ),
        ],
      ),
    );
  }
}
