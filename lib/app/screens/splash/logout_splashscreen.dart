// ignore_for_file: camel_case_types

import 'package:chitory_app/app/screens/login/login.dart';
import 'package:flutter/material.dart';

class Logout_SplashScreen extends StatelessWidget {
  static String routeName = 'Logout SplashScreen';
  const Logout_SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LogIn.routeName, (route) => false);
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
