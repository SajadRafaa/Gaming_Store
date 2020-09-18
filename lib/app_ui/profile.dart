import 'package:flutter/material.dart';
import 'package:gaming_store/models/app_bar_class.dart' as appBar;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _greyColor = Color(0xff9b9b9b);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar.AppBarWidget().getAppBar("Profile", Icons.more_vert),
      drawer: appBar.AppBarWidget().getDrawer(),
      body: new ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(
                        width: 4,
                        color: Color(0xff64BDE5),
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/app_images/profileImg.jpg"),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  new Text(
                    "Hello, Sajad Rafaa",
                    style: TextStyle(color: _greyColor, fontSize: 20),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  new Text(
                    "Iraq , Basra , Al-Tanoma",
                    style: TextStyle(color: _greyColor, fontSize: 12),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  new Divider(
                    indent: 40,
                    endIndent: 40,
                    color: _greyColor,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  Container(
                    height: 400,
                    child: GridView(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: [
                        cardProfile("Edit", Icons.edit, 0xffF2B43B, 0xffEF7956),
                        cardProfile(
                            "Settings", Icons.settings, 0xffC07DF5, 0xffD875EB),
                        cardProfile(
                            "Pay", Icons.credit_card, 0xff61DBF0, 0xff64BDE5),
                        cardProfile("Logout", Icons.exit_to_app, 0xffffafbd,
                            0xffffc3a0),
                        // cardProfile(),
                        // cardProfile(),
                        // cardProfile(),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 28),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getBottomNav(),
    );
  }

  Widget getBottomNav() {
    int _page = 0;
    GlobalKey _bottomNavigationKey = GlobalKey();
    return Container(
      height: 65.0,
      child: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 3,
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

  Widget cardProfile(String title, IconData icon, int colorOne, int colorTow) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomLeft,
            begin: Alignment.topRight,
            colors: [Color(colorOne), Color(colorTow)],
          ),

          // image: DecorationImage(
          //   image: AssetImage('assets/images/app_images/profileImg.jpg'),
          //   fit: BoxFit.cover,
          // ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: new Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
              children: [
                new Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                new Text("$title",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
