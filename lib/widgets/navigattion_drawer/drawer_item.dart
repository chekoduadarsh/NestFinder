import 'package:flutter/material.dart';

class Draweritem extends StatelessWidget {
  final String title;
  final IconData icon;

  const Draweritem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 25),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          Text(
            title,
            style: themeData.textTheme.headline3,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
