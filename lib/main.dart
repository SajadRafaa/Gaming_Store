import 'package:flutter/material.dart';
import 'package:gaming_store/app_ui/homePage.dart';
import 'package:gaming_store/app_ui/profile.dart';
//import 'package:gaming_store/products_view/mouse.dart';
//import 'package:gaming_store/app_ui/input_credit.dart';
import 'package:gaming_store/models/product_page.dart';
import 'package:gaming_store/app_ui/products_page_class.dart';
import 'package:gaming_store/app_ui/login_page.dart';

main(List<String> args) {
  runApp(LunchApp());
}

class LunchApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: "Gaming Store",
      home: new LoginPage(),
      theme: ThemeData(
        fontFamily: "Roboto",
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new HomePage(),
        '/Profile': (BuildContext context) => new ProfilePage(),
        // '/Mouse1': (BuildContext context) => new MouseOneView(),
        // '/Credit': (BuildContext context) => new InputCreditOption(),
        //'/Third': (BuildContext  context) => new Third('test'),
      },
    );
  }
}
