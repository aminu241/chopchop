// ignore_for_file: avoid_print

import 'package:chopchop/app_database.dart';
import 'package:chopchop/db_operations.dart';
import 'package:chopchop/screens/home/home_screen.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'global.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  db = await AppDatabase().initDB();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString("email");
    // DBOperations(db).lastUserByEmail(email!);
  print("logged in User:" + email.toString());
  runApp(MaterialApp(home: email == null ? WelcomeScreen() : HomeScreen()));
}


// void getLoggedInUser() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? email = prefs.getString("email");
//   DBOperations(db).lastUserByEmail(email!);
// }

// void userDbIsEmpty() async {
//   int? count =
//       Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM users'));
//   print(count);
//   if (count! > 0) {
//     landingScreen = HomeScreen();
//   } else {
//     landingScreen = WelcomeScreen();
//   }
// }

