import 'dart:ui';

import 'package:bee/buttons/loginButton.dart';
import 'package:bee/constants/color.dart';
import 'package:bee/constants/fontSize.dart';
import 'package:bee/constants/fontWeights.dart';
import 'package:bee/constants/spaces.dart';
import 'package:bee/forms/LoginForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox emailButton(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.70,
    height: space_9,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(space_10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: loginColorD,
        ),
        child: const Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
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
