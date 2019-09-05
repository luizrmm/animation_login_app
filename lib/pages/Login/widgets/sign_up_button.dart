import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160),
      onPressed: () {},
      child: Text(
        "Não possui conta? Cadastre-se!",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 12.0,
            letterSpacing: 1),
      ),
    );
  }
}
