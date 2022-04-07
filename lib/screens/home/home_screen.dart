import 'package:flutter/material.dart';
import 'package:chopchop/screens/components/body.dart';


const kPrimaryColor = Colors.white;
const kPrimaryLightColor = Color(0xff2EB886);

class HomeScreen extends StatelessWidget {
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
                    "Welcome to  ChopChop First Name, We're happy to have you back",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 67),
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
                              return WelcomeScreen();

                            },
                          ),
                        );
                      },
                      child: Text(
                        "Logout",
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
