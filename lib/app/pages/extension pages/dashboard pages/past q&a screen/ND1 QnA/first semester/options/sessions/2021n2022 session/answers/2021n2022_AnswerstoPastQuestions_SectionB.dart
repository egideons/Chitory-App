// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class STB122_Answers_To_Past_QuestionsSectionB extends StatefulWidget {
  static String routeName =
      "STB122 2021/2022 Answers To Past Questions Section B";
  const STB122_Answers_To_Past_QuestionsSectionB({super.key});

  @override
  State<STB122_Answers_To_Past_QuestionsSectionB> createState() =>
      _STB122_Answers_To_Past_QuestionsSectionBState();
}

class _STB122_Answers_To_Past_QuestionsSectionBState
    extends State<STB122_Answers_To_Past_QuestionsSectionB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: const Text(
          "",
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
                            "Section B Answers",
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
                          "2a). Mention three (3) characteristics of each of the following:\n Phylum zycomycota\n Phylum Ascomycota\n Phylum Basidiomycota\n\n2b. List (5) economics importance of fungi\nAns:\ni. They are used as food or preparation of food\nii. The are used for pest control.\niii. They are used to produce citric acid, antibiotics\niv. They are used for model research.\nv. They are used in the medicine industry\n\n2c. List the three categories of Bryophyte\nAns:\ni. Liverworts\nii. Hornworts\niii. Mosses",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "3a. Draw and label the general strcture of bacterium\nAns:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          constraints: BoxConstraints.expand(height: 450.0),
                          width: MediaQuery.of(context).size.width * 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/Images/Light Mode Images/answers to past questions/stb 122/2021n2022/image-diagram.jpg",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "3b. In a tabular form, differentiate between gymnosperm and angiosperm\nAns:\nGymnosperm\n1. They are seed producing non-flowering plant\n2. Their seed are bare and not enclosed\n3. They are evergreen in nature\n4. Reproduction is dependent on wind for spread\n5. They have Haploid tissue\n\nAngiosperm\n1. They are seed producing flowering plant\n2. Their seed are enclosed in an ovary\n3. Their life cycle are seasonal\n4. Reproduction is dependent animals for spread\n5. They have triploid tissue\n\n4a. List five (5) general characteristic of of algae\nAns:\ni. Algae are photosynthetic organism\nii. Algae are unicellular or multicellular organism\niii. Algae lack a well defined body.\niv. Algae are found where there is adequate moisture\nv. reproduction is by both sexual and asexual form.\n\n4b. List five (5) classifications of algae and briefly explain any two (2)\nAns:\ni. Chlorophyceae\nii. Bacillariophyceae\niii. Rhodophyceae\niv. Xanthophyceae\nv. Dinophyceae\n\nChlorophyceae: this is a class of algae (division chlorophyta) distinguised chiefly by having a clear green colour, their chlorophyll being masked by other pigments.\nXanthophyceae: This is a class of algae in which the green pigment of the chromatophores are partially masked by xanthophyll.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
