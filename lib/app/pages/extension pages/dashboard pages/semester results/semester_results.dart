// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/widgets/hnd1_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/widgets/hnd2_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/widgets/nd1_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/widgets/nd2_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Semester_Results_Screen extends StatefulWidget {
  static String routeName = "Semester Results Screen";
  const Semester_Results_Screen({super.key});

  @override
  State<Semester_Results_Screen> createState() =>
      _Semester_Results_ScreenState();
}

class _Semester_Results_ScreenState extends State<Semester_Results_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: Text(
          "Semester Results",
          style: TextStyle(
            color: kAccentColor,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search_rounded,
              color: kAccentColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  constraints: BoxConstraints.expand(height: 220.0),
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/Images/Light Mode Images/dashboard/federal_poly_nasarawa/Frame 1.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 85.0,
                      right: 80.0,
                    ),
                    child: Text(
                      "Check Your Results",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kAccentColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    SemesterResultsND1_NeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            "ND 1 Level Results",
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SemesterResultsND2_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SemesterResultsHND1_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SemesterResultsHND2_NeumorphicButton(
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
