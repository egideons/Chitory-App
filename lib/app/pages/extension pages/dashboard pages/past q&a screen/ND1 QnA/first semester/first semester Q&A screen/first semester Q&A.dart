// ignore_for_file: prefer_const_constructors, file_names

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/widgets/gns111PastQ&A_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/widgets/gns125PastQ&A_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/widgets/mth113PastQ&A_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/widgets/stb122Past&A_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/widgets/stc111PastQ&A_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class FirstSemesterQnA extends StatefulWidget {
  static String routeName = "First Semester Q&A";
  const FirstSemesterQnA({super.key});

  @override
  State<FirstSemesterQnA> createState() => _FirstSemesterQnAState();
}

class _FirstSemesterQnAState extends State<FirstSemesterQnA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: Text(
          "First Semester",
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 85.0,
                      right: 80.0,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
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
                  margin: EdgeInsets.only(top: 10),
                  constraints: BoxConstraints.expand(height: 250.0),
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/Images/Light Mode Images/dashboard/federal_poly_nasarawa/Frame 1.png",
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 85.0,
                      right: 80.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    STB122PastQnA_NeumorphicButton(
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
                    STC111PastQnA_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GNS111PastQnA_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MTH113PastQnA_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GNS125PastQnA_NeumorphicButton(
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
