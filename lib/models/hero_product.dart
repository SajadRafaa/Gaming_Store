import 'package:flutter/material.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart'
    as rating;
import 'package:gaming_store/products_view/mouse.dart';

final _greyColor = Color(0xff9b9b9b);

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HeroProdect extends _ProductViewState {
  Widget getHeroProdect(String title, String secoundTitle, double star,
      String image, String price, String routeName) {
    return Container(
      height: 220.0,
      //color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 60.0,
            left: 20.0,
            right: 20.0,
            bottom: 5.0,
            child: new Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
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
                    new Positioned(
                      top: 20,
                      left: 30,
                      child: new Text(
                        "$title",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 50,
                      left: 30,
                      child: new Text(
                        "$secoundTitle",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 85,
                      left: 30,
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
                    new Positioned(
                      top: 110,
                      left: 30,
                      child: Row(
                        children: [
                          new Text(
                            "\$",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          new Text(
                            "$price",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            top: 169,
            left: 295,
            child: InkWell(
              onTap: () {},
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
          ),
          Positioned(
            width: 150.0,
            height: 150.0,
            left: 210.0,
            top: -15.0,
            child: new Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("$image")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
