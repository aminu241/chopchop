import 'package:chopchop/db_operations.dart';
import 'package:chopchop/global.dart';
import 'package:flutter/material.dart';
import 'package:chopchop/screens/login/login_screen.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    String firstname = '';
    String lastname = '';
    String email = '';

    
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/background.jpeg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black87.withOpacity(0.5), BlendMode.hardLight)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.2,

                    child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(children: [
                        BackButton(
                          color: Colors.white,
                        )
                      ]),
                      const Text(
                        "Welcome Back",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "Login to your account",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    //color: Colors.white,
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {
                                firstname = value;
                              },
                              decoration: InputDecoration(
                                hintText: "First Name",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {
                                lastname = value;
                              },
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: kPrimaryLightColor,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: kPrimaryLightColor,
                                ),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Remember me"),
                              SizedBox(
                                width: 100,
                              ),
                              FlatButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                        SizedBox(height: 70),
                        Container(
                            width: size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: FlatButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                color: kPrimaryLightColor,
                                onPressed: () {
                                  DBOperations(db)
                                      .insertRecord(firstname, lastname);
                                  print("added $firstname $lastname");
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            SizedBox(
                              width: 2,
                            ),
                            //FlatButton("Sign up"),
                            FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              color: kPrimaryColor,
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
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
