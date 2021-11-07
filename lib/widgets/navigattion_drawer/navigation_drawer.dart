import 'package:flutter/material.dart';
import 'package:nest_finder/widgets/navigattion_drawer/drawer_item.dart';
import 'package:nest_finder/widgets/navigattion_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
        border: Border.all(
          width: 1, //                   <--- border width here
        ),
      ),
      child: Column(
        children: <Widget>[
          NaviagationDrawerHeader(),
          Draweritem("Rent", Icons.house_outlined),
          Draweritem("Buy", Icons.apartment_outlined),
          Spacer(),
          Draweritem("Settings", Icons.settings_sharp)
        ],
      ),
    );
  }
}
