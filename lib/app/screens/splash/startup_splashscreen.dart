// ignore_for_file: camel_case_types

import 'package:chitory_app/constants/constants.dart';
import 'package:chitory_app/modules/wrapper/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Startup_SplashScreen extends StatelessWidget {
  static String routeName = 'Startup_SplashScreen';
  const Startup_SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, Wrapper.routeName, (route) => false);
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: 400,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/Light Mode Images/splash screen/chitory-logo.jpg"),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SpinKitCubeGrid(
                      color: kAccentColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
