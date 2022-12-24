import 'package:chitory_app/app/screens/forgotPassword/forgotPassword.dart';
import 'package:flutter/material.dart';

class ForgotPasswordField extends StatelessWidget {
  const ForgotPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPassword(),
            ),
          );
        }),
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
