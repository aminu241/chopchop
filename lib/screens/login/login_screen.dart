import 'package:flutter/material.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:chopchop/screens/Signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/background.jpeg"),
                  colorFilter: ColorFilter.mode(
                      Colors.black87.withOpacity(0.5), BlendMode.hardLight),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.3,

                    child: Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(children: [
                        BackButton(
                          color: Colors.white,
                        )
                      ]),
                      SizedBox(
                        height: 40,
                      ),
                      Icon(
                        Icons.agriculture,
                        color: kPrimaryColor,
                        size: 100,
                      ),
                    ]),
                    //color: Colors.white,
                  ),
                  Container(
                    height: size.height * 0.7,
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
                          height: MediaQuery.of(context).size.height / 10,
                        ),
                        const Text(
                          "Welcome Back",
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        const Text(
                          "Login to your account",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              icon:
                                  Icon(Icons.person, color: kPrimaryLightColor),
                              hintText: "Email/Username",
                              hintStyle: TextStyle(
                                  color: kPrimaryLightColor,
                                  fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            obscureText: true,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock, color: kPrimaryLightColor),
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
                        SizedBox(height: 100),
                        Container(
                            width: size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: FlatButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                color: kPrimaryLightColor,
                                onPressed: () {},
                                child: Text(
                                  "Login",
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
                            Text("Don't have an account?"),
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
                                      return SignupScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Sign up",
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
