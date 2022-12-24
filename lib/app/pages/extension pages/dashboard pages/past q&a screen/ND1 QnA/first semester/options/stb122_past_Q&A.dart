// ignore_for_file: prefer_const_constructors, file_names, camel_case_types

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/sessions/widgets/2017n2018_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/sessions/widgets/2018n2019_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/sessions/widgets/2019n2020_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/sessions/widgets/2020n2021_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/sessions/widgets/2021n2022_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class STB122_PastQnA_Sessions extends StatefulWidget {
  static String routeName = "STB122 Past Q&A Sessions";
  const STB122_PastQnA_Sessions({super.key});

  @override
  State<STB122_PastQnA_Sessions> createState() =>
      _STB122_PastQnA_SessionsState();
}

class _STB122_PastQnA_SessionsState extends State<STB122_PastQnA_Sessions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 85.0,
                      right: 80.0,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Past Q&A/ND 1/First Semester",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kAccentColor,
                        ),
                      ),
                    ),
                  ),
                ),
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
                      "STB 122 (PAST Q&A)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kAccentColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TwoOneTwoTwoSession_NeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            '',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TwoZeroTwoOneSession_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OneNineTwoZeroSession_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OneEightOneNineSession_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OneSevenOneEightSession_NeumorphicButton(
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
