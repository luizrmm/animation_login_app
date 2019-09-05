import 'package:animation_login/pages/Login/widgets/form_container.dart';
import 'package:animation_login/pages/Login/widgets/sign_up_button.dart';
import 'package:animation_login/pages/Login/widgets/stagger_animation.dart';
import 'package:animation_login/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
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
                alignment: Alignment.bottomCenter,
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
                  ),
                  StaggerAnimation(controller: _animationController.view)
                ],
              ),
            ],
          )),
    );
  }
}
