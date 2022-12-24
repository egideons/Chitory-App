// ignore_for_file: camel_case_types

import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class GNS125_NeumorphicHeader extends StatelessWidget {
  const GNS125_NeumorphicHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      height: 100,
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(6, 6),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width - 20,
      child: const Center(
        child: Text(
          "GNS 125",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
