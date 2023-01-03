// ignore_for_file: file_names

import 'package:chitory_app/app/screens/createaccount/widgets/createaccount_neumorphicbutton.dart';
import 'package:chitory_app/app/screens/modules/email_field.dart';
import 'package:chitory_app/app/screens/modules/regnumber_field.dart';
import 'package:chitory_app/app/screens/modules/username_field.dart';
import 'package:chitory_app/constants/constants.dart';
import 'package:chitory_app/packages/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateAccount extends StatefulWidget {
  static String routeName = "CreateAccount";
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
  bool _visiblePassword = false;
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  final _formKey = GlobalKey<FormState>();

  //Create the email and password controllerss
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async {
    FirebaseAuthMehods(FirebaseAuth.instance).signUpWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
    );
  }

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
                          EmailField(
                            controller: emailController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            maxLength: 16,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            obscureText: !_visiblePassword,
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: kAccentColor,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _visiblePassword = !_visiblePassword;
                                  });
                                },
                                icon: _visiblePassword
                                    ? const Icon(
                                        Icons.visibility_rounded,
                                        color: kAccentColor,
                                      )
                                    : Icon(
                                        Icons.visibility_off_rounded,
                                        color: Colors.grey.shade500,
                                      ),
                                splashColor: kAccentColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  100.0,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  100.0,
                                ),
                                borderSide: const BorderSide(
                                  color: kAccentColor,
                                  width: 1,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  100.0,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  100.0,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your password!!";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CreateAccountNeumorphicButton(
                            onPressed: (() {
                              signUpUser;
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
