import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/first_semester_notes.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/screens/GNS%20125/gns125_note.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/lecture%20notes/nd1_notes/first%20semester%20notes/screens/GNS%20125/gns125_screen.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/first%20semester%20Q&A.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/options/stb122_past_Q&A.dart';
import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/semester%20results/levels/nd1_level_results.dart';
import 'package:chitory_app/app/pages/home%20wrapper/homeWrapper.dart';
import 'package:chitory_app/app/pages/main%20pages/dashboard/dashboard.dart';
import 'package:chitory_app/app/pages/main%20pages/folder/folder.dart';
import 'package:chitory_app/app/pages/main%20pages/home/home.dart';
import 'package:chitory_app/app/pages/main%20pages/profile/profile.dart';
import 'package:chitory_app/app/screens/createAccount/createAccount.dart';
import 'package:chitory_app/app/screens/forgotPassword/forgotPassword.dart';
import 'package:chitory_app/app/screens/forgotPassword/verification.dart';
import 'package:chitory_app/app/screens/onboarding/onboarding.dart';
import 'package:chitory_app/app/screens/login/login.dart';
import 'package:chitory_app/app/screens/splash/login_splashscreen.dart';
import 'package:chitory_app/app/screens/splash/startup_splashscreen.dart';
import 'package:chitory_app/modules/wrapper/wrapper.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  //Splash Screens
  Startup_SplashScreen.routeName: (context) => const Startup_SplashScreen(),
  Login_SplashScreen.routeName: (context) => const Login_SplashScreen(),

  //Wrappers
  Wrapper.routeName: (context) => const Wrapper(),
  HomeWrapper.routeName: (context) => const HomeWrapper(),

  //Onboarding Screen
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),

  //Authentication pages
  LogIn.routeName: (context) => const LogIn(),
  CreateAccount.routeName: (context) => const CreateAccount(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  ForgotPasswordVerification.routeName: (context) =>
      const ForgotPasswordVerification(),

  //Main App Pages
  Home.routeName: (context) => const Home(),
  Folder.routeName: (context) => const Folder(),
  Dashboard.routeName: (context) => const Dashboard(),
  Profile.routeName: (context) => const Profile(),

  //Notes Pages
  FirstSemesterNotes.routeName: (context) => const FirstSemesterNotes(),
  GNS125_Screen.routeName: (context) => const GNS125_Screen(),
  GNS125_Note.routeName: (context) => const GNS125_Note(),

  //Past QnA Pages
  FirstSemesterQnA.routeName: (context) => const FirstSemesterQnA(),
  STB122_PastQnA_Sessions.routeName: (context) =>
      const STB122_PastQnA_Sessions(),

  //Results Pages
  ND1_Level_Results.routeName: (context) => const ND1_Level_Results(),
};
