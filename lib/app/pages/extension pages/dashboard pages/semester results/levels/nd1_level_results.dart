// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/levels/widgets/1stsemester_result_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/levels/widgets/2ndsemester_result_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class ND1_Level_Results extends StatefulWidget {
  static String routeName = "ND 1 Level Results";
  const ND1_Level_Results({super.key});

  @override
  State<ND1_Level_Results> createState() => _ND1_Level_ResultsState();
}

class _ND1_Level_ResultsState extends State<ND1_Level_Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: Text(
          "ND 1",
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
                    First_Semester_Results_NeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            "First Semester Result",
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Second_Semester_Results_NeumorphicButton(
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
