// ignore_for_file: file_names

import 'package:chitory_app/app/screens/createAccount/createAccount.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccountField extends StatelessWidget {
  const CreateAccountField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: "Don't have an account?  ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: 'Create',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: kAccentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
