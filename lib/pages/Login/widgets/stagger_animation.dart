import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  StaggerAnimation({this.controller})
      : buttonSqueeze = Tween<double>(begin: 320.0, end: 60.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0, 0.150))),
        buttonZoomout = Tween<double>(begin: 60, end: 1000).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.5, 1, curve: Curves.bounceOut)));

  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomout;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50.0),
      child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Hero(
            tag: "fade",
            child: buttonZoomout.value <= 60
                ? Container(
                    width: buttonSqueeze.value,
                    height: 60.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 64, 106, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: _buildInside(context))
                : Container(
                    width: buttonZoomout.value,
                    height: buttonZoomout.value,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 64, 106, 1.0),
                        shape: buttonZoomout.value < 500
                            ? BoxShape.circle
                            : BoxShape.rectangle),
                  ),
          )),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueeze.value > 75) {
      return Text(
        "Sign in",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
