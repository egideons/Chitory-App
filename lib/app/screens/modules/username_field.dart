// ignore_for_file: must_be_immutable, unused_field, file_names, sort_child_properties_last

import 'package:chitory_app/themehelpers/username_themehelper.dart';
import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: true,
      keyboardType: TextInputType.name,
      autocorrect: true,
      enableInteractiveSelection: true,
      decoration: UserNameThemeHelper().textInputDecoration(
        "User Name",
        "Enter your user name",
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return "Please enter your user name";
        }
        return null;
      },
    );
  }
}
