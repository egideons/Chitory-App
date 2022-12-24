// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class STB122_2021_2022_Past_Questions extends StatefulWidget {
  static String routeName = "STB122 2021/2022 Past Questions";
  const STB122_2021_2022_Past_Questions({super.key});

  @override
  State<STB122_2021_2022_Past_Questions> createState() =>
      _STB122_2021_2022_Past_QuestionsState();
}

class _STB122_2021_2022_Past_QuestionsState
    extends State<STB122_2021_2022_Past_Questions> {
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
                            "Section A",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1(a)State the two kingdom of classification according to Carl Linnaeus\n\n(b). Mention the mode of nutrition in fungi\n\n(c). List the three categories of Bryophyte\n\n(d). Briefly describe the various shapes of bacteria\n\n(e). Mention the two forms of reproduction in Algae\n\n(f). Define the terms as they relate to living things:\n\n               1. Mophology     2. Physiology\n\n(g). Mention the four classes that are found in the phylum ‘protozoa’ and their respective locomotive organelles\n\n(h). Mention the three vacuoles found in amoeba\n\n(i). Mention two (2) examples of parasites nematodes.\n\n(j). Mention the two sexual life cycles found in ‘Cnidaria'",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(
                              () {
                                Navigator.pushNamed(context,
                                    "STB122 2021/2022 Answers To Past Questions Section A");
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kAccentColor),
                          child: Text(
                            "Answers",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Center(
                          child: Text(
                            "Section B",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "2a). Mention three (3) characteristics of each of the following:\n Phylum zycomycota\n Phylum Ascomycota\n Phylum Basidiomycota\n\n2b. List (5) economics importance of fungi\n\n2c. List the three categories of Bryophyte\n\n3a. Draw and label the general strcture of bacterium\n\n3b. In a tabular form, differentiate between gymnosperm and angiosperm\n\n4a. List five (5) general characteristic of of algae\n\n4b. List five (5) classifications of algae and briefly explain any two (2)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(
                              () {
                                Navigator.pushNamed(context,
                                    "STB122 2021/2022 Answers To Past Questions Section B");
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kAccentColor,
                          ),
                          child: Text(
                            "Answers",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
