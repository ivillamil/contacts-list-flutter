import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final String title;
  final double barHeight = 56.0;

  NavBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      child: new Row(
        children: <Widget>[
          new Text(
              title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          )
        ],
      ),
      height: barHeight + statusBarHeight,
      padding: new EdgeInsets.only(top: statusBarHeight, left: 20.0),
    );
  }
}