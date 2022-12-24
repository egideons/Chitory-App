// ignore_for_file: camel_case_types

import 'package:chitory_app/app/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class User_Authenticate extends StatefulWidget {
  static String routeName = "User_Authenticate";
  const User_Authenticate({super.key});

  @override
  State<User_Authenticate> createState() => _User_AuthenticateState();
}

class _User_AuthenticateState extends State<User_Authenticate> {
  @override
  Widget build(BuildContext context) {
    return const OnBoardingScreen();
  }
}
