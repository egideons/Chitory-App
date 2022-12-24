// ignore_for_file: file_names

import 'package:chitory_app/app/pages/main%20pages/dashboard/dashboard.dart';
import 'package:chitory_app/app/pages/main%20pages/folder/folder.dart';
import 'package:chitory_app/app/pages/main%20pages/home/home.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/profile.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  static String routeName = "HomeWrapper";
  static const title = "Chitory";
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int _currentIndex = 2;
  final List<Widget> _children = const [
    Home(),
    Folder(),
    Dashboard(),
    Profile(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        currentIndex: _currentIndex,
        backgroundColor: kAccentColor,
        type: BottomNavigationBarType.fixed,
        onTap: onTappedBar,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            label: "Home",
            activeIcon: Icon(
              Icons.home_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.white,
            ),
            label: "Folder",
            activeIcon: Icon(
              Icons.folder,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            label: "Dashboard",
            activeIcon: Icon(
              Icons.dashboard,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: "Profile",
            activeIcon: Icon(
              Icons.person,
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}
