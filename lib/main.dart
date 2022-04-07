// ignore_for_file: avoid_print

import 'package:chopchop/app_database.dart';
import 'package:chopchop/myapp.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'global.dart';
import 'screens/home/home_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  db = await AppDatabase().initDB();
  // getLastUser();
  userDbIsEmpty();
       print("jubvuejd jbe v v1234");
  // getLastUser();

  runApp(const MyApp());
}

void userDbIsEmpty() async {
  int? count =
      Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM users'));
  print(count);
  if (count! > 0) {
    // landingScreen = HomeScreen();
  } else {
    // landingScreen = WelcomeScreen();
  }
       print("jubvuejd jbe v v123");
}

void getLastUser() {
  var lastUser = db.rawQuery("SELECT * FROM users  DESC LIMIT 1").then((value) {
    List<Map<String, dynamic>> s = value;
    List<String> lastUserList = [];
    for (var x in s) {
      x.forEach((k, v) => lastUserList.add(v));
    }
    print("jubvuejd jbe v v");
    print(lastUserList);
       print("jubvuejd jbe v v");
  });
}
