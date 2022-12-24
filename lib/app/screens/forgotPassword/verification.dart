// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:chitory_app/app/screens/login/login.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:chitory_app/themehelpers/forgotpassword_themehelper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ForgotPasswordVerification extends StatefulWidget {
  static String routeName = "Forgot Password Verification";
  const ForgotPasswordVerification({Key? key}) : super(key: key);

  @override
  _ForgotPasswordVerificationState createState() =>
      _ForgotPasswordVerificationState();
}

class _ForgotPasswordVerificationState
    extends State<ForgotPasswordVerification> {
  final _formKey = GlobalKey<FormState>();
  bool _pinSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Verification',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Enter the verification code we just sent you on your email address.',
                            style: TextStyle(
                                // fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          OTPTextField(
                            length: 4,
                            width: 300,
                            fieldWidth: 50,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.underline,
                            onCompleted: (pin) {
                              setState(() {
                                _pinSuccess = true;
                              });
                            },
                          ),
                          const SizedBox(height: 50.0),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: "Didn't receive a code? ",
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Resend',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ForgotPasswordThemeHelper()
                                              .alertDialog(
                                                  "Successful",
                                                  "Verification code resend successful.",
                                                  context,
                                                  context);
                                        },
                                      );
                                    },
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          Container(
                            decoration: _pinSuccess
                                ? ForgotPasswordThemeHelper()
                                    .buttonBoxDecoration(context)
                                : ForgotPasswordThemeHelper()
                                    .buttonBoxDecoration(
                                        context, "#AAAAAA", "#757575"),
                            child: ElevatedButton(
                              style: ForgotPasswordThemeHelper().buttonStyle(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  "Verify".toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: _pinSuccess
                                  ? () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) => const LogIn(),
                                          ),
                                          (Route<dynamic> route) => false);
                                    }
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
