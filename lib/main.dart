import 'package:chopchop/myapp.dart';
import 'package:flutter/material.dart';
import 'package:chopchop/app_database.dart';
import 'global.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  db = await AppDatabase().initDB();

  runApp( MyApp());
}


