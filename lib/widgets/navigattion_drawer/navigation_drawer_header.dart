import 'package:flutter/material.dart';

class NaviagationDrawerHeader extends StatelessWidget {
  const NaviagationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)],
                border: Border.all(
                  width: 0.01, //                   <--- border width here
                ),
              ),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/logo/logo.png',
                  height: 100,
                  width: 180,
                ),
              ))
        ],
      ),
    );
  }
}
