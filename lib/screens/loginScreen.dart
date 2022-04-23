import 'dart:ui';

import 'package:bee/buttons/emailButton.dart';
import 'package:bee/buttons/loginButton.dart';
import 'package:bee/constants/color.dart';
import 'package:bee/constants/fontSize.dart';
import 'package:bee/constants/fontWeights.dart';
import 'package:bee/constants/spaces.dart';
import 'package:bee/forms/LoginForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img.png"), // <-- BACKGROUND IMAGE
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: space_25,
                    ),
                    SizedBox(
                        width: space_16,
                        height: space_18,
                        child: Image.asset("assets/logo.png")),
                    const SizedBox(
                      height: space_7,
                    ),
                    Row(
                      children: [
                        Text(
                          "BEE",
                          style: TextStyle(
                              fontSize: size_10,
                              color: statusBarColor,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(
                              fontSize: size_10,
                              color: statusBarColor,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      height: space_9,
                      margin: EdgeInsets.fromLTRB(
                          space_8, space_11, space_8, space_0),
                      child: loginForm(),
                    ),
                    loginButton(context),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: space_4, bottom: space_4),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontSize: size_8,
                            color: GreyColor,
                            fontWeight: boldWeight),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    emailButton(context),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
