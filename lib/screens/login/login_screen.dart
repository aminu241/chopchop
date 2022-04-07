import 'package:chopchop/screens/Signup/signup_screen.dart';
import 'package:chopchop/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";

    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage("assets/images/background.jpeg"),
                  colorFilter: ColorFilter.mode(
                      Colors.black87.withOpacity(0.5), BlendMode.hardLight),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    // const SizedBox(
                    //   height: 50,
                    // ),
                    Row(children: const [
                      BackButton(
                        color: Colors.white,
                      )
                    ]),
                    const SizedBox(
                      height: 40,
                    ),
                    const Icon(
                      Icons.agriculture,
                      color: kPrimaryColor,
                      size: 100,
                    ),
                  ]),
                  Container(
                    height: size.height * 0.6,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height / 10,
                        // ),
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        const Text(
                          "Login to your account",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height / 30,
                        // ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: const InputDecoration(
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
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height / 50,
                        // ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            obscureText: true,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: const InputDecoration(
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
                        const SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("Remember me"),
                              FlatButton(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                        const SizedBox(height: 30),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            color: kPrimaryLightColor,
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            const SizedBox(
                              width: 2,
                            ),
                            //FlatButton("Sign up"),
                            FlatButton(
                              padding: const EdgeInsets.symmetric(
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
                              child: const Text(
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
