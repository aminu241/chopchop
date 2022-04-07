import 'package:chopchop/db_operations.dart';
import 'package:chopchop/global.dart';
import 'package:chopchop/myapp.dart';
import 'package:chopchop/screens/home/home_screen.dart';
import 'package:chopchop/screens/login/login_screen.dart';
import 'package:chopchop/user.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //     fit: BoxFit.fill,
                  //     image: const AssetImage("assets/images/background.jpeg"),
                  //     colorFilter: ColorFilter.mode(
                  //         Colors.black87.withOpacity(0.5), BlendMode.hardLight)),
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(children: const [
                      BackButton(
                        color: Colors.white,
                      )
                    ]),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      "Login to your account",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                  Container(
                    height: size.height * 0.7,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            onChanged: (value) {
                              firstname = value;
                              print(firstname);
                            },
                            decoration: const InputDecoration(
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                  color: kPrimaryLightColor,
                                  fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            onChanged: (value) {
                              lastname = value;
                            },
                            decoration: const InputDecoration(
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                  color: kPrimaryLightColor,
                                  fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
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
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: kPrimaryLightColor,
                                  fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
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
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: size.width * 0.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(211, 211, 211, 100),
                              borderRadius: BorderRadius.circular(29)),
                          child: TextField(
                            obscureText: true,
                            onChanged: (value) {},
                            decoration: const InputDecoration(
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
                        const SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Remember me"),
                              const SizedBox(
                                width: 100,
                              ),
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
                        // const SizedBox(height: 70),
                        SizedBox(
                            width: size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: FlatButton(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                color: kPrimaryLightColor,
                                onPressed: () {
                                  print("object");
                                  DBOperations(db).insertRecord(
                                      firstname, lastname, email, password);
                                          loggedInUser = User(
                                      id: DateTime.now().millisecond,
                                      first_name: firstname,
                                      last_name: lastname,
                                      email: email,
                                      password: password);
                                  print(firstname);
                                  print("added $firstname $lastname");
                                  MyApp().homeScreen = HomeScreen();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomeScreen();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
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
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
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
