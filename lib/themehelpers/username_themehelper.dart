// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

bool _validate = false;

class UserNameThemeHelper {
  InputDecoration textInputDecoration(
      [String lablelText = "", String hintText = ""]) {
    return InputDecoration(
      prefixIcon: Icon(
        Icons.person,
        color: kAccentColor,
      ),
      labelText: lablelText,
      hintText: hintText,
      errorText: _validate ? "Please Enter Username" : null,
      fillColor: Colors.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    );
  }
}
