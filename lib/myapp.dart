import 'package:chopchop/global.dart';
import 'package:chopchop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'screens/welcome/welcome_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.



  @override
  void initState() {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChopChop App',
      theme: ThemeData(
        //primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: landingScreen,
    );
  }
}
