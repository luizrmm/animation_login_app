import 'package:flutter/material.dart';

import 'input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: 'Username',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: 'Password',
              obscure: true,
              icon: Icons.lock_outline,
            )
          ],
        ),
      ),
    );
  }
}
