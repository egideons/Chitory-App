// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class EditProfileNeumorphicButton extends StatefulWidget {
  final Function() onPressed;

  EditProfileNeumorphicButton({
    Key? key,
    required this.onPressed,
  });

  @override
  State<EditProfileNeumorphicButton> createState() =>
      _EditProfileNeumorphicButtonState();
}

class _EditProfileNeumorphicButtonState
    extends State<EditProfileNeumorphicButton> {
  bool _isPressed = false;

  void _onPointerDown(TapDownDetails event) {
    widget.onPressed;
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(TapUpDetails event) {
    widget.onPressed();
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
          height: 60,
          width: MediaQuery.of(context).size.width - 20,
          padding: EdgeInsets.only(left: 15),
          child: Center(
            child: Row(
              children: [
                Icon(
                  Icons.person_add_alt_rounded,
                  color: _isPressed ? Colors.white : kAccentColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: _isPressed ? Colors.white : kAccentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
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
