import 'package:animation_login/pages/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;
  AnimatedListView({@required this.listSlidePosition});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Esudar flutter",
          subtitle: "Com o curso do Daniel Ciolfi",
          image: AssetImage("images/person.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Esudar flutter",
          subtitle: "Com o curso do Daniel Ciolfi",
          image: AssetImage("images/person.png"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
