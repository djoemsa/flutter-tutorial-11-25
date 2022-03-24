import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/menu-page');
        },
        label: Text('LOGIN'),
        icon: Icon(Icons.login),
        backgroundColor: Colors.greenAccent,
        splashColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xfff1f2f6),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff00cec9),
                      Color(0xff55efc4),
                      Color(0xff0abde3),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  )),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff81ecec),
                      Color(0xff55efc4),
                      Color(0xff0984e3),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                  )),
              child: Center(
                child: Text(
                  "Login Page",
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(fontSize: 35, color: Colors.white)),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top:  getBigDiameter(context) + 30),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      controller: emailTextController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      controller: passwordTextController,
                      obscuringCharacter: '*', //added obscuringCharacter here
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Color(0xff55efc4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
