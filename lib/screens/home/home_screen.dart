import 'package:chopchop/db_operations.dart';
import 'package:chopchop/global.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Colors.white;
const kPrimaryLightColor = Color(0xff2EB886);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            //Backgreound Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage("assets/images/background.jpeg"),
                  colorFilter: ColorFilter.mode(
                      Colors.black87.withOpacity(0.5), BlendMode.hardLight),
                ),
              ),
            ),
            Center(
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        loggedInUser.first_name,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 30),
                      )),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  SizedBox(
                      width: size.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: FlatButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: kPrimaryLightColor,
                          onPressed: () {
                            landingScreen = WelcomeScreen();
                            DBOperations(db).users().toString();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WelcomeScreen();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
