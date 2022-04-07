import 'package:flutter/material.dart';
import 'package:chopchop/screens/Signup/signup_screen.dart';
import 'package:chopchop/screens/login/login_screen.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          //Backgreound Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/background.jpeg"),
                colorFilter: ColorFilter.mode(
                    Colors.black87.withOpacity(0.5), BlendMode.hardLight),
              ),
            ),
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "The best app for your daily nutrition",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 67),
                  )),
              SizedBox(
                height: size.width * 0.5,
              ),
              Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignupScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SizedBox(
                height: size.width * 0.02,
              ),
              Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryLightColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
