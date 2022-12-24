// ignore_for_file: camel_case_types

import 'package:chitory_app/app/pages/home%20wrapper/homeWrapper.dart';
import 'package:flutter/material.dart';

class Login_SplashScreen extends StatelessWidget {
  static String routeName = 'Login SplashScreen';
  const Login_SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeWrapper.routeName, (route) => false);
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: 400,
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/animations/successfully-green.gif",
                    ),
                  ),
                  shape: BoxShape.circle,
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
