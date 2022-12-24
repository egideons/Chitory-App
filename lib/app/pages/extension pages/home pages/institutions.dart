// ignore_for_file: prefer_const_constructors

import 'package:chitory_app/app/pages/extension%20pages/home%20pages/widgets/colleges_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/home%20pages/widgets/polytechnics_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/extension%20pages/home%20pages/widgets/universities_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class NigerianInstitutionsScreen extends StatefulWidget {
  static String routeName = 'Nigerian Institutions';
  const NigerianInstitutionsScreen({super.key});

  @override
  State<NigerianInstitutionsScreen> createState() =>
      _NigerianInstitutionsScreenState();
}

class _NigerianInstitutionsScreenState
    extends State<NigerianInstitutionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: kAccentColor,
        title: Text(
          "Nigerian Institutions",
          style: TextStyle(
            color: Colors.white,
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
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
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
                        "assets/Images/Light Mode Images/home page/Frame 1.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Access Various Nigerian Institutions",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kAccentColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    UniversitiesNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Universities Screen',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    PolytechnicsNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Polytechnics Screen',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CollegesNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Colleges Screen',
                          );
                        });
                      },
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
