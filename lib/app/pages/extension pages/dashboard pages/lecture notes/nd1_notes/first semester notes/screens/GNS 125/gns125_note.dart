// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:chitory_app/app/pages/main%20pages/home/modules/CustomSearchDelegates.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class GNS125_Note extends StatefulWidget {
  static String routeName = "GNS125 Note";
  const GNS125_Note({super.key});

  @override
  State<GNS125_Note> createState() => _GNS125_NoteState();
}

class _GNS125_NoteState extends State<GNS125_Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        title: const Text(
          "GNS 125 Lecture Note",
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
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Citizen Education",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(GNS 125)",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Government Political Parties and Elections".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Government is defined as the administrative machinary for the impostion of order and the enforcement of the will of the state or society. it is the instrument charged with the responsibility to govern the state.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "i. Law and order in the society \nii. policy making and execution \niii. welfare and liberty of the people \niv. conduct of the affair of the society vis-avis other society e.t.c",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "In any association where there is no government such association will not function properly, therefore, government is essential in order to prevent lawlessness and ensure that there is security of lives and property. where there is no government might would be right.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "VARIOUS SYSTEMS AND FORMS OF GOVERNMENT".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Presidential \nParliamentary/Cabinet\nMonarchy\nFederalism\nConfederalism\nFacism\nTotalitarism\nMilitary\nRepublican\nDemocracy\nAutocracy\nMillitary",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "TOTALITARISM: This is the principle and practice of a state in which every citizen is subject to the power of the state that exercise complete control over all areas of life. political power vested in an individual.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "AUTOCRATIC: this is that government ruled by a simple absolute rule or a despot. the dictionary of social science defines autocracy as rule by one person ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "MILITARY: The Military system of government is that in which the armed forces are in command of the leadership of the country and it entire political system  comes by coup d’etat that is by force overthrow of the government unconstitutionally.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "MONARCHICAL SYSTEMS: Monarchy is one of the earliest systems of government. a monarch is one who becomes the head of the state by hereditary. that is by inheritance from his parents or relations. he could either have absolute power or ceremonial powers.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FEDERALISM: A federal type of government which widely practiced all over the world can be define as a system of government by compromise between two or more independent state which agree to come together under a central government.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "CONFEDERALISM: This is the type of government in which sovereign states come together as autonomous bodies to form a loose political union in which central government is sub-ordinate to the component governments.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FACISM: Facism is a form of government which centers a power in a senate party head by an absolute dictator.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FUNCTIONS OF GOVERNMENT",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "1) Enactment of Law: It is the responsibility of the legislator known as the national assembly to make law\n2) Maintenance of Law, peace and order: it is the responsibility of the government tp maintain law peace and order.the executive arm of government carried out this duties through the establishment of police law court.\n3) Provision of employment to citizen: it is the duty of the government to see that citizen are gainfully employed. The government does this by establishing industries and public corporations.\n4) Provision  of employment to citizens: it is the duty of the government to see that citizen are gainfully employed. The government does this by establishing industries and companies.\n5) Policy formulation: it is the duty of the government to formulate policies and carry them out for good governance.\n6) Protection of life and property: it is the duty of the government to protect the lives and properties of the citizen. These are done by the Police Force and the court.\n7) Defence of the country from external aggression: Well equipped armed forces are established by the government to defend the country from external aggression\n8) Maintenance of external relations: This involves the membership of international organization, establishment and maintenance of embassies and high commission in other countries and participation in international conferences and treaties with other states.\n9) Provision of the social amenities: the government provides provides amenities which are beneficial to the citizens.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ELECTION",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Election may be defined as the process of choosing particular candidates as representative of the citizen of a country in the government",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
