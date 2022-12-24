// ignore_for_file: camel_case_types

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class First_Semester_Result extends StatelessWidget {
  static String routeName = "First Semester Result";
  const First_Semester_Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: const Text(
          "Your Grade",
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
            Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            "ND1 First Semester Result".toUpperCase(),
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Name: Onyekachi Christian Ezekwe\nReg no: Ndslt5632nil\nSeMCU: 26\nSEMGP: 78\nCUMGP: 26\nSGPA: 3.00\nCUMGPA: 3.00\nCUFAILED: 0\nREMARK: Passed",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
