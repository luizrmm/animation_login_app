import 'package:animation_login/pages/home/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bem vindo Flutterando!",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/person.png"),
                      fit: BoxFit.cover)),
              child: Container(
                  width: containerGrow.value * 35,
                  height: containerGrow.value * 35,
                  margin: EdgeInsets.only(left: 80.0),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: containerGrow.value * 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.cyan)),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
