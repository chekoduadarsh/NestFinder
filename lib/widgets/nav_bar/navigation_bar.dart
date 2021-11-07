import 'package:flutter/material.dart';

import 'package:nest_finder/utils/constants.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: COLOR_TRANSPARENT,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Expanded(
              child: SizedBox(
                  height: 40,
                  width: 160,
                  child: Image.asset(
                    'assets/logo/logo.png',
                    height: 40,
                    width: 100,
                  ))),
        ],
      ),
    );
  }
}
