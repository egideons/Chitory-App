import 'package:chitory_app/modules/authentication/user_authentication.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  static String routeName = "Wrapper";
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return const User_Authenticate();
  }
}
