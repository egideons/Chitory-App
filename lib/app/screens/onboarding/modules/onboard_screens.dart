// ignore_for_file: prefer_const_constructors
import 'package:chitory_app/app/screens/onboarding/modules/onboard_model.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
    img: 'assets/Images/Light Mode Images/onboarding screen/Frame 1.png',
    text:
        "Access to Unlimited Academic Resources From Various Higher Institutions in Nigeria",
    bg: Colors.white,
    button: kAccentColor,
  ),
  OnboardModel(
    img: 'assets/Images/Light Mode Images/onboarding screen/Frame 2.png',
    text: "Access to Unlimited Library of Lecture Notes",
    bg: Colors.white,
    button: kAccentColor,
  ),
  OnboardModel(
    img: 'assets/Images/Light Mode Images/onboarding screen/Frame 3.png',
    text: "Access to Unlimited Past Questions and Answers",
    bg: Colors.white,
    button: kAccentColor,
  ),
];
