// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously,

import 'package:chitory_app/app/screens/onboarding/modules/onboard_screens.dart';
import 'package:chitory_app/app/screens/login/login.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  static String routeName = "OnBoardingScreen";
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        actions: currentIndex % 3 == 2
            ? null
            : [
                TextButton(
                  onPressed: () async {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogIn(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kAccentColor,
                    ),
                  ),
                ),
              ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: PageView.builder(
          itemCount: screens.length,
          controller: _pageController,
          // physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(screens[index].img),
                SizedBox(
                  height: 10.0,
                  child: ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                            width: currentIndex == index ? 25.0 : 10.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: kAccentColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Text(
                  screens[index].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: kAccentColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (index == screens.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogIn(),
                        ),
                      );
                    }

                    _pageController.nextPage(
                      duration: Duration(
                        milliseconds: 600,
                      ),
                      curve: Curves.decelerate,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBackgroundColor,
                    elevation: 10,
                    shadowColor: Colors.black,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: currentIndex % 3 == 2 ? 0 : 10.0,
                      vertical: index % 3 == 2 ? 10.0 : 10.0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          (index % 3 == 2 ? "Get Started" : "Next"),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: kAccentColor,
                          ),
                        ),
                        SizedBox(
                          width: index % 3 == 2 ? 5 : 10.0,
                        ),
                        Icon(
                          index % 3 == 2 ? Icons.login : Icons.arrow_forward,
                          color: kAccentColor,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
