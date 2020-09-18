import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart'
    as rating;

Widget anotherProducts(
    String productTitle, String price, double star, String image) {
  final _greyColor = Color(0xff9b9b9b);
  return Container(
    //color: Colors.red,
    height: 125,
    child: new Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(60, 12, 20, 5),
          child: new Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                // color: Colors.white, //background color of box
                BoxShadow(
                  color: _greyColor,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 1.0, //extend the shadow
                  offset: Offset(
                    10.0, // Move to right 10  horizontally
                    10.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Stack(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 60, top: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        new Text("$productTitle",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(left: 60, top: 45),
                  alignment: Alignment.topLeft,
                  child: new rating.RatingBar(
                    rating: star,
                    icon: Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.grey,
                    ),
                    starCount: 5,
                    spacing: 5.0,
                    size: 10,
                    isIndicator: false,
                    allowHalfRating: true,
                    onRatingCallback:
                        (double value, ValueNotifier<bool> isIndicator) {
                      print('Number of stars-->  $value');
                      //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                      isIndicator.value = true;
                    },
                    color: Colors.amber,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 60, top: 70),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      new Text("\$",
                          style: TextStyle(fontSize: 10, color: Colors.black)),
                      new Text("$price",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          //  alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              image: DecorationImage(
            alignment: Alignment.centerLeft,
            // scale: 1.5,
            image: new AssetImage(
              "$image",
            ),
          )),
        ),
        Positioned(
          top: 66,
          left: 295,
          child: new Container(
            // alignment: Alignment.bottomRight,
            height: 46,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20))),
            child: Icon(Icons.add_shopping_cart, color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
