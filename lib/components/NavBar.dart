import 'package:flutter/material.dart';
import 'package:contacts_list/settings/AppColors.dart';

class NavBar extends StatelessWidget {
  final String title;
  final double barHeight = 56.0;
  VoidCallback onBack;

  NavBar(String title, {dynamic onBack})
      : this.title = title {
    if (onBack != null) this.onBack = onBack;
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final List<Widget> elements = <Widget>[];

    if (onBack != null) {
      elements.add(
        new IconButton(
          icon: const Icon(
              Icons.arrow_back,
            color: AppColors.text,
          ),
          onPressed: onBack,
          splashColor: AppColors.purpleDarker,
          highlightColor: AppColors.purple,
        )
      );
    } else {
      elements.add(
          new Text(
            title,
            style: const TextStyle(
              color: AppColors.text,
              fontSize: 16.0,
            ),
          )
      );
    }

    return new Container(
      child: new Row(children: elements),
      height: barHeight + statusBarHeight,
      padding: new EdgeInsets.only(
          top: statusBarHeight,
          left: onBack != null ? 4.0 : 20.0
      ),
    );
  }
}