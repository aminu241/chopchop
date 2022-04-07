import 'package:chopchop/db_operations.dart';
import 'package:chopchop/global.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kPrimaryColor = Colors.white;
const kPrimaryLightColor = Color(0xff2EB886);

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    // userDbIsEmpty();
    super.initState();
  }

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
                      child: const Text(
                        "Welcome",
                        // loggedInUser.first_name,
                        style: TextStyle(
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
                          onPressed: () async {
                            // landingScreen = WelcomeScreen();
                            DBOperations(db).users().toString();
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.remove('email');

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
