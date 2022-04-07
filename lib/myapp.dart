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

  void userDbIsEmpty() async {
    int? count =
        Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM users'));
    print(count);
    if (count! > 0) {
      landingScreen = HomeScreen();
    } else {
      landingScreen = WelcomeScreen();
    }

    @override
    void initState() {
      userDbIsEmpty();
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
