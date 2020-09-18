import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          new Container(
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/app_images/loginHero.jpg"),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.9),
              ),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: new Column(
                    children: [
                      new Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      new TextFormField(
                        decoration: InputDecoration(
                            hintText: '@userName',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusColor: Colors.white,
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      new TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusColor: Colors.white,
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text("hi"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
