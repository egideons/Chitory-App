import 'package:chitory_app/app/screens/modules/createaccount_field.dart';
import 'package:chitory_app/app/screens/modules/email_field.dart';
import 'package:chitory_app/app/screens/modules/forgotpassword_field.dart';
import 'package:chitory_app/app/screens/login/widgets/login_neumorphicbutton.dart';
import 'package:chitory_app/app/screens/modules/password_field.dart';
import 'package:chitory_app/app/screens/modules/regnumber_field.dart';
import 'package:chitory_app/app/screens/splash/login_splashscreen.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  static String routeName = "Login";
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/Images/Light Mode Images/login page/Frame 1.jpg",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 30,
                      color: kAccentColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please fill in your details to log in",
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          const RegNumberField(),
                          const SizedBox(
                            height: 20,
                          ),
                          const EmailField(),
                          const SizedBox(
                            height: 20,
                          ),
                          const PasswordField(),
                          const SizedBox(
                            height: 20,
                          ),
                          const ForgotPasswordField(),
                          const SizedBox(
                            height: 20,
                          ),
                          LoginNeumorphicButton(
                            onPressed: (() {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  Login_SplashScreen.routeName,
                                  (route) => false,
                                );
                              }
                            }),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const CreateAccountField(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
