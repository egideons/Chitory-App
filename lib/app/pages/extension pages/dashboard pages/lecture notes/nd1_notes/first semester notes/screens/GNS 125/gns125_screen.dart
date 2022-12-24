// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/screens/GNS%20125/widgets/gns125_neumorphicheader.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class GNS125_Screen extends StatefulWidget {
  static String routeName = "GNS 125 Screen";
  const GNS125_Screen({super.key});

  @override
  State<GNS125_Screen> createState() => _GNS125_ScreenState();
}

class _GNS125_ScreenState extends State<GNS125_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GNS125_NeumorphicHeader(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(
                        context,
                        "GNS125 Note",
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    constraints: BoxConstraints.expand(height: 320.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/Images/Light Mode Images/book image/Frame 1.png",
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kAccentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: const <Widget>[
                            Expanded(
                              child: Align(
                                child: Text(
                                  "Download",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kAccentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: const <Widget>[
                            Expanded(
                              child: Align(
                                child: Text(
                                  "Save Offline",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
