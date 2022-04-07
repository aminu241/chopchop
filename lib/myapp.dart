import 'package:flutter/material.dart';

import 'screens/welcome/welcome_screen.dart';

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  Widget homeScreen = WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChopChop App',
      theme: ThemeData(
        //primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: homeScreen,
    );
  }
}
