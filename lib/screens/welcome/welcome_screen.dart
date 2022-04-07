import 'package:flutter/material.dart';
import 'package:chopchop/screens/components/body.dart';

const kPrimaryColor = Colors.white;
const kPrimaryLightColor = Color(0xff2EB886);
Widget homeScreen = WelcomeScreen();
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}
