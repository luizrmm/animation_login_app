import 'package:animation_login/pages/Login/widgets/form_container.dart';
import 'package:animation_login/pages/Login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "images/background.jpg",
                  ))),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 70.0, bottom: 32.0),
                        child: Image.asset(
                          "images/check.png",
                          fit: BoxFit.contain,
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                      FormContainer(),
                      SignUpButton()
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
