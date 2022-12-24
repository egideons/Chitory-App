// ignore_for_file: prefer_const_constructors

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/widgets/gns111_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/widgets/gns125_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/widgets/mth113_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/widgets/stb122_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/widgets/stc111_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class FirstSemesterNotes extends StatefulWidget {
  static String routeName = "First Semester Notes";
  const FirstSemesterNotes({super.key});

  @override
  State<FirstSemesterNotes> createState() => _FirstSemesterNotesState();
}

class _FirstSemesterNotesState extends State<FirstSemesterNotes> {
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
                      "Lecture Notes/ND 1/First Semester",
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
                    GNS125_NeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            "GNS 125 Screen",
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    STB122_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    STC111_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MTH113_NeumorphicButton(
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GNS111_NeumorphicButton(
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
