// ignore_for_file: prefer_const_constructors

// // import 'package:chitory/app/Modules/home/home.dart';
// // import 'package:chitory/app/Modules/homepage/widgets/mart_neumorphicbutton.dart';
// import 'package:chitory/app/Modules/homepage/widgets/institutions_neumorphicbutton.dart';
// import 'package:chitory/app/Modules/homepage/widgets/blog_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/home%20wrapper/homeWrapper.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/app/pages/main%20pages/home/widgets/blog_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/widgets/institutions_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/widgets/mart_neumorphicbutton.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String routeName = "Home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          HomeWrapper.title,
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
            icon: Icon(
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
                        "assets/Images/Light Mode Images/home page/Frame 3.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Unlimited resources at your finger tip",
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
                    InstitutionsNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Nigerian Institutions',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MartNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Mart',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BlogNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Blog',
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
