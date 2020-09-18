import 'package:flutter/material.dart';
import 'package:gaming_store/models/app_bar_class.dart' as appBarDrawer;
import 'package:gaming_store/local_data/mouses_data.dart';

class OnePageView extends StatelessWidget {
  final _blackColor = Color(0xff383838);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDrawer.AppBarWidget().getAppBar(
        "Razer",
        Icons.arrow_forward_ios,
      ),
      drawer: appBarDrawer.AppBarWidget().getDrawer(),
      body: new Container(
        child: new ListView(
          children: [
            new Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/products/mouse5.png"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: new Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: new Stack(
                  overflow: Overflow.visible,
                  children: [
                    new GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: new Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: new Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: new Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 310,
                      left: 115,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        splashColor: Colors.blue,
                        highlightColor: Colors.blue,
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: _blackColor,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
