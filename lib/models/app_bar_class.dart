import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  @override
  _AppBarDrawerState createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AppBarWidget extends _AppBarDrawerState {
  AppBar getAppBar(String title, IconData icon) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: new Text(
        "$title",
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(icon),
            onPressed: () {
              print("1");
            })
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    );
  }

  Drawer getDrawer() {
    return Drawer(
      child: new ListView(
        children: [
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/app_images/background.jpg"),
              ),
            ),
            accountName: new Text("Sajad Rafaa"),
            accountEmail: new Text("sajad.rafaa.hasan@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/app_images/profileImg.jpg"),
            ),
          ),
          menuListTile("Settings", Icons.settings, "hi"),
          menuListTile("Pay Option", Icons.credit_card, "/Credit"),
          menuListTile("Profile", Icons.person_outline, "hi"),
          new Divider(
            color: Colors.grey,
            endIndent: 40,
            indent: 40,
          ),
          menuListTile("logout", Icons.exit_to_app, "hi"),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: new Text(
                "Code By Sajad Rafaa All Reseve",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuListTile(String title, IconData icon, String navigator) {
    return ListTile(
      hoverColor: Colors.purpleAccent,
      focusColor: Colors.purpleAccent,
      title: new Text(
        "$title",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      leading: Icon(icon),
      onTap: () => Navigator.of(context).pushReplacementNamed("/Credit"),
    );
  }
}
