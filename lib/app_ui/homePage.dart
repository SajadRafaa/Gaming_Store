import 'package:flutter/material.dart';
import 'package:gaming_store/local_data/mouses_data.dart';
import 'package:gaming_store/models/app_bar_class.dart' as appBar;
import 'package:gaming_store/models/hero_product.dart' as heroProdect;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:gaming_store/models/anotherProduct.dart' as anotherProduct;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var test = new bottomNavBar.Bnb();
  // app color used
  final _whiteColor = Color(0xffd7dae1);
  final _purpColor = Color(0xffa68df5);

  final _greyColor = Color(0xff9b9b9b);
  // var _onGreyColor = Color(0xff9b9b9b);
  var _section1Color = Color(0xff9b9b9b);
  var _section2Color = Color(0xff9b9b9b);
  var _section3Color = Color(0xff9b9b9b);
  var _section4Color = Color(0xff9b9b9b);
  var _section5Color = Color(0xff9b9b9b);

  bool server1Selected, server2Selected, server3Selected = false;

  @override
  void initState() {
    setState(() {
      server1Selected = false;
      server2Selected = false;
      server3Selected = false;
    });
    super.initState();
  }

  _onPressSection1() {
    setState(() {
      _section1Color = Colors.black;
    });
  }

  _onPressSection2() {
    setState(() {
      _section2Color = Colors.black;
    });
  }

  _onPressSection3() {
    setState(() {
      _section3Color = Colors.black;
    });
  }

  _onPressSection4() {
    setState(() {
      _section4Color = Colors.black;
    });
  }

  _onPressSection5() {
    setState(() {
      _section5Color = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //Custom App Bar And Drawer => models/app_bar_class.dart
        appBar: appBar.AppBarWidget().getAppBar("Gaming Store", Icons.search),
        drawer: appBar.AppBarWidget().getDrawer(),
        //end Custom App Bar And Drawer
        //body start
        body: new Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white70,
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  child: new Align(
                    alignment: Alignment.topLeft,
                    child: new Text(
                      "Welcome to\nGamming Gear Shop",
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              new Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new FlatButton(
                          autofocus: true,
                          textColor: Colors.black,
                          disabledColor: _greyColor,
                          onPressed: () => _onPressSection1(),
                          child: new Text("Mouses",
                              style: TextStyle(
                                  color: _section1Color, fontSize: 20)),
                        ),
                        new FlatButton(
                          autofocus: true,
                          onPressed: () => _onPressSection2(),
                          child: new Text("Xbox One Controller",
                              style: TextStyle(
                                  color: _section2Color, fontSize: 20)),
                        ),
                        new FlatButton(
                          autofocus: true,
                          onPressed: () => _onPressSection3(),
                          child: new Text("PS4 Controller",
                              style: TextStyle(
                                  color: _section3Color, fontSize: 20)),
                        ),
                        new FlatButton(
                          autofocus: true,
                          onPressed: () => _onPressSection4(),
                          child: new Text("Headsets",
                              style: TextStyle(
                                color: _section4Color,
                                fontSize: 20,
                              )),
                        ),
                        new FlatButton(
                          autofocus: true,
                          onPressed: () => _onPressSection5(),
                          child: new Text("Keybord",
                              style: TextStyle(
                                  color: _section5Color, fontSize: 20)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.only(bottom: 40)),
              new Container(
                color: Colors.transparent,
                child: new Column(
                  children: [
                    heroProdect.HeroProdect().getHeroProdect(
                        mouseData[3]["name"],
                        mouseData[3]["mouseName"],
                        5,
                        mouseData[3]["image"],
                        mouseData[3]["price"],
                        "/Mouse1"),
                    new Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "New Arrival",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    anotherProduct.anotherProducts(
                      mouseData[1]["name"],
                      mouseData[1]["price"],
                      4,
                      mouseData[1]["image"],
                    ),
                    anotherProduct.anotherProducts(
                      mouseData[1]["name"],
                      mouseData[1]["price"],
                      4,
                      mouseData[1]["image"],
                    ),
                    anotherProduct.anotherProducts(
                      mouseData[1]["name"],
                      mouseData[1]["price"],
                      4,
                      mouseData[1]["image"],
                    ),
                    anotherProduct.anotherProducts(
                      mouseData[1]["name"],
                      mouseData[1]["price"],
                      4,
                      mouseData[1]["image"],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Custom Bottom Nav Bar => models/bottom_nav_class.dart
        bottomNavigationBar: getBottomNav()
        //end Project
        );
  }

  Widget ratingBar(Color starColor) {
    return new Icon(
      Icons.star,
      color: starColor,
      size: 15,
    );
  }

  Widget getBottomNav() {
    int _page = 0;
    GlobalKey _bottomNavigationKey = GlobalKey();
    return Container(
      //margin: Edge,
      height: 65.0,
      child: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        items: <Widget>[
          Icon(Icons.home, size: 25),
          Icon(Icons.shopping_cart, size: 25),
          Icon(Icons.favorite_border, size: 25),
          Icon(Icons.person, size: 25),
          // Icon(Icons.call_split, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _page = index;
            if (_page == 0) {
              Navigator.of(context).popAndPushNamed("/Home");
            } else {
              Navigator.of(context).popAndPushNamed("/Profile");
            }
          });
        },
      ),
    );
  }
}
