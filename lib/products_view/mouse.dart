// import 'package:flutter/material.dart';
// import 'package:gaming_store/models/app_bar_class.dart' as appBarDrawer;
// import 'package:gaming_store/models/product_page.dart' as productPage;
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class MouseOneView extends StatefulWidget {
//   @override
//   _MouseOneViewState createState() => _MouseOneViewState();
// }

// class _MouseOneViewState extends State<MouseOneView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBarDrawer.AppBarWidget().getAppBar(
//         "RedDragon",
//         Icons.arrow_back_ios,
//       ),
//       //body: productPage.ProductPageView().getProductPageView(),
//       bottomNavigationBar: GetPageView().getBottomNav(),
//     );
//   }
// }

// class GetPageView extends _MouseOneViewState {
//   Widget getBottomNav() {
//     int _page = 0;
//     GlobalKey _bottomNavigationKey = GlobalKey();
//     return Container(
//       //margin: Edge,
//       height: 65.0,
//       child: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: 0,
//         height: 55.0,
//         items: <Widget>[
//           Icon(Icons.home, size: 25),
//           Icon(Icons.shopping_cart, size: 25),
//           Icon(Icons.favorite_border, size: 25),
//           Icon(Icons.person, size: 25),
//           // Icon(Icons.call_split, size: 30),
//         ],
//         color: Colors.white,
//         buttonBackgroundColor: Colors.white,
//         backgroundColor: Colors.blueAccent,
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 500),
//         onTap: (index) {
//           setState(() {
//             _page = index;
//             if (_page == 0) {
//               Navigator.of(context).popAndPushNamed("/Home");
//             } else {
//               Navigator.of(context).popAndPushNamed("/Profile");
//             }
//           });
//         },
//       ),
//     );
//   }
// }
