// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/widgets/change_password_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/widgets/edit_profile_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/widgets/focus_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/widgets/information_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/widgets/logout_neumorphicbutton.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String routeName = "Profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          "My Profile",
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
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/Images/Light Mode Images/profile picture/Frame 2.jpg",
                        ),
                        radius: 70,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Onyekachi C. Ezekwe",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kAccentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    EditProfileNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Edit Profile',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChangePasswordNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Change Password',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InformationNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Information',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FocusNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(
                            context,
                            'Focus Mode',
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    LogoutNeumorphicButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacementNamed(
                            context,
                            "Logout SplashScreen",
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
