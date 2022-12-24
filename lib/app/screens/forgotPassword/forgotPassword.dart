// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:chitory_app/app/screens/forgotPassword/verification.dart';
import 'package:chitory_app/app/screens/forgotPassword/widgets/sendcode_neumorphicbutton.dart';
import 'package:chitory_app/app/screens/login/login.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:chitory_app/themehelpers/email_themehelper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  static String routeName = "Forgot Password";
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/animations/Forgot Password/confusion.gif",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  25,
                  10,
                  25,
                  10,
                ),
                padding: const EdgeInsets.fromLTRB(
                  10,
                  0,
                  10,
                  0,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Enter the email address associated with your account.',
                            style: TextStyle(
                              // fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We will send a verification code to your email',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              // fontSize: 20,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: EmailThemeHelper().textInputDecoration(
                              "Email",
                              "Enter your Email",
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Email can't be empty!!";
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                  .hasMatch(val)) {
                                return "Enter a valid email address!!";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          SendCodeNeumorphicButton(
                            onPressed: (() {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordVerification(),
                                  ),
                                );
                              }
                            }),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: "Remember your password? ",
                                ),
                                TextSpan(
                                  text: 'Login',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        LogIn.routeName,
                                        (route) => false,
                                      );
                                    },
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kAccentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
