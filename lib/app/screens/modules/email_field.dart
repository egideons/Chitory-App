import 'package:chitory_app/themehelpers/email_themehelper.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    // Email text field controller
    TextEditingController emailController = TextEditingController();

    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autocorrect: true,
      enableSuggestions: true,
      decoration: EmailThemeHelper().textInputDecoration(
        "Email Address",
        "Enter your email address",
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter your email address!!";
        } else if (!RegExp(
                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
            .hasMatch(value)) {
          return "Enter a valid email address!!";
        }
        return null;
      },
    );
  }
}
