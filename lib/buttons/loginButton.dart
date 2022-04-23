import 'dart:ui';

import 'package:bee/constants/color.dart';
import 'package:bee/constants/fontSize.dart';
import 'package:bee/constants/fontWeights.dart';
import 'package:bee/constants/spaces.dart';
import 'package:bee/forms/LoginForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container loginButton(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.70,
    height: space_9,
    margin: EdgeInsets.fromLTRB(space_8, space_11, space_8, space_0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(space_10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: statusBarColorD,
        ),
        child: const Text(
          'Login/Sign up',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        //null safety error here , needs to be resolved
        // if (_formKey.currentState!.validate()) {
        //   Get.to(() => NewOTPVerificationScreen(
        //       providerData.phoneController));

        onPressed: () {},
      ),
    ),
  );
}
