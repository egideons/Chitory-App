import 'package:chitory_app/app/pages/extension%20pages/dashboard%20pages/past%20q&a%20screen/ND1%20QnA/first%20semester/first%20semester%20Q&A%20screen/first%20semester%20Q&A.dart';
import 'package:chitory_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chitory',
      debugShowCheckedModeBanner: false,
      initialRoute: FirstSemesterQnA.routeName,
      routes: routes,
    );
  }
}
