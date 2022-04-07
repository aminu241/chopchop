import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:chopchop/user.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

late final Database db;
late Widget landingScreen = WelcomeScreen();
late User loggedInUser;
