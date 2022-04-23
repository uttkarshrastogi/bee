import 'package:bee/constants/color.dart';
import 'package:bee/constants/fontSize.dart';
import 'package:bee/constants/spaces.dart';
import 'package:flutter/material.dart';

TextFormField loginForm() {
  return TextFormField(
    style: const TextStyle(
      color: Colors.white,
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(space_5, space_1, space_5, space_1),
      counterText: "",
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(space_2),
        borderSide: const BorderSide(color: statusBarColor, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(space_2),
        borderSide: const BorderSide(color: GreyColor, width: 1.5),
      ),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      filled: true,
      fillColor: loginColor,
      hintText: '',
      hintStyle: TextStyle(color: Colors.white, fontSize: size_7),
    ),
  );
}
