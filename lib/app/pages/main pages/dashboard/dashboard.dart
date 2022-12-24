import 'package:chitory_app/app/pages/main%20pages/dashboard/widgets/dept_notice_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/dashboard/widgets/lecture_notes_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/dashboard/widgets/past_q&a_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/dashboard/widgets/semester_results_neumorphicbutton.dart';
import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static String routeName = "Dashboard";
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: const Text(
          "Dashboard",
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
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  constraints: const BoxConstraints.expand(height: 220.0),
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/Images/Light Mode Images/dashboard/federal_poly_nasarawa/Frame 1.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Text(
                      "Welcome to Federal Polytechnic Nasarawa/Science and Lab Tech.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kAccentColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    LectureNotes_NeumorphicButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "First Semester Notes",
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PastQnA_NeumorphicButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.pushNamed(
                              context,
                              "First Semester Q&A",
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SemesterResults_NeumorphicButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.pushNamed(
                              context,
                              "ND 1 Level Results",
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DepartmentNotice_NeumorphicButton(
                      onPressed: (() {}),
                    ),
                    const SizedBox(
                      height: 20,
                    )
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

Widget build(BuildContext context) {
  return const Text("Dashboard");
}
