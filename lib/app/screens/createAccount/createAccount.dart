// ignore_for_file: file_names

import 'package:chitory_app/app/screens/createaccount/widgets/createaccount_neumorphicbutton.dart';
import 'package:chitory_app/app/screens/modules/email_field.dart';
import 'package:chitory_app/app/screens/modules/password_field.dart';
import 'package:chitory_app/app/screens/modules/regnumber_field.dart';
import 'package:chitory_app/app/screens/modules/username_field.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  static String routeName = "CreateAccount";
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  final _formKey = GlobalKey<FormState>();

  //Create the email and password controllerss
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        foregroundColor: kAccentColor,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.6,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/Images/Light Mode Images/signup page/Frame 1.png",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 30,
                      color: kAccentColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please fill in your details to register",
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
                          const UserNameField(),
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
                          CreateAccountNeumorphicButton(
                            onPressed: (() {
                              if (_formKey.currentState!.validate()) {}
                            }),
                          ),
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
