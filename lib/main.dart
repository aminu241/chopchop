import 'package:chopchop/myapp.dart';
import 'package:flutter/material.dart';
import 'package:chopchop/app_database.dart';
import 'package:sqflite/sqflite.dart';
import 'global.dart';
import 'screens/home/home_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  db = await AppDatabase().initDB();

  

  runApp(const MyApp());
}



