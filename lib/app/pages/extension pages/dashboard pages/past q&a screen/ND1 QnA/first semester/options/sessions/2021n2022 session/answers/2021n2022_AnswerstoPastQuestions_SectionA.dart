// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class STB122_Answers_To_Past_QuestionsSectionA extends StatefulWidget {
  static String routeName =
      "STB122 2021/2022 Answers To Past Questions Section A";
  const STB122_Answers_To_Past_QuestionsSectionA({super.key});

  @override
  State<STB122_Answers_To_Past_QuestionsSectionA> createState() =>
      _STB122_Answers_To_Past_QuestionsSectionAState();
}

class _STB122_Answers_To_Past_QuestionsSectionAState
    extends State<STB122_Answers_To_Past_QuestionsSectionA> {
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
          children: const [
            Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            "Section A Answers",
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
                          "1(a)State the two kingdom of classification according to Carl Linnaeus\nAns:\n1. Kingdom Plantae\n2. Kingdom Animalia\n\n(b). Mention the mode of nutrition in fungi\nAns:\nSaprophytic Mode of Nutrition\n\n(c). List the three categories of Bryophyte\nAns:\nHepaticopside (Liverworts)\nAnthocerotopsida (Hornworts)\nBryopsida (Mosses)\n\n(d). Briefly describe the various shapes of bacteria\nAns:\nSpherical (Cocci)\nRod (Bacilli)\nSpiral (Spirilla)\nComma (Vibrios)\n\n(e). Mention the two forms of reproduction in Algae\nAns:\nSexual reproduction.\nAsexual reproduction\n\n(f). Define the terms as they relate to living things:\n\n               1. Mophology     2. Physiology\nAns:\nMorphology: is the branch of biology that deals with the study of form and structure of organism and their structural features.\nPhysiology: is the branch of biology relating to the function of organs and organs system, and how they work withing the body and react to external stimuli\n\n(g). Mention the four classes that are found in the phylum ‘protozoa’ and their respective locomotive organelles\nAns:\n\nClasses                                          Locomotive organelle\nMastigophora                                 Flagella\nSarcodina                                       Pseudopodia\nCiliophora                                       Cilia\nSporozoa                                        Myonemes\n\n(h). Mention the three vacuoles found in amoeba\nAns:\nContractile vacuole\nFood vacuole\nWater Vacuoles\n\n(i). Mention two(2) examples of parasites nematodes.\nAns:\nHookworm\nPinworm\n\n(j). Mention the two sexual life cycles found in ‘Cnidaria'\nAns:\nPolyp\nMedusa",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 50,
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
