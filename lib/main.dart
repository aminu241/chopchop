import 'package:chopchop/myapp.dart';
import 'package:flutter/material.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:chopchop/constants.dart';
import 'package:chopchop/app_database.dart';
import 'package:chopchop/db_operations.dart';
import 'global.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  db = await AppDatabase().initDB();

  runApp(const MyApp());
}


