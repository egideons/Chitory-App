// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors_in_immutables, file_names, camel_case_types

import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SemesterResultsHND1_NeumorphicButton extends StatefulWidget {
  final Function() onPressed;

  SemesterResultsHND1_NeumorphicButton({
    Key? key,
    required this.onPressed,
  });

  @override
  State<SemesterResultsHND1_NeumorphicButton> createState() =>
      _SemesterResultsHND1_NeumorphicButtonState();
}

class _SemesterResultsHND1_NeumorphicButtonState
    extends State<SemesterResultsHND1_NeumorphicButton> {
  bool _isPressed = false;

  _onPointerDown(TapDownDetails event) {
    widget.onPressed();
    setState(() {
      _isPressed = true;
    });
  }

  _onPointerUp(TapUpDetails event) {
    widget.onPressed;
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: _onPointerDown,
      onTapUp: _onPointerUp,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          height: 100,
          width: MediaQuery.of(context).size.width - 20,
          child: Center(
            child: Text(
              "HND 1",
              style: TextStyle(
                color: _isPressed ? Colors.white : kAccentColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: _isPressed ? kAccentColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _isPressed ? Colors.grey.shade200 : Colors.white,
            ),
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(6, 6),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
