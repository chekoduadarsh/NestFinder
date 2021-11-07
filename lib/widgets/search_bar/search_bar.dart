import 'package:flutter/material.dart';
import 'package:nest_finder/data/data.dart';

import 'package:nest_finder/utils/constants.dart';
import 'package:nest_finder/views/landingPage.dart';

class HouseSearchBar extends StatefulWidget {
  HouseSearchBar({Key? key}) : super(key: key);

  @override
  _HouseSearchBarState createState() => _HouseSearchBarState();
}

class _HouseSearchBarState extends State<LandingPage> {
  void _onSearchButtonPressed(String searchText) {
    print("search button clicked " + searchText);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    var _controller = TextEditingController();
    var textController = TextEditingController();
    return Container(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: TextFormField(
              controller: textController,
              style: themeData.textTheme.headline1,
              onFieldSubmitted: (text) {
                _onSearchButtonPressed(textController.text);
              },
              decoration: InputDecoration(
                  hintText: 'City',
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _onSearchButtonPressed(textController.text);
                    },
                    icon: Icon(Icons.search),
                  )),
            )));
  }
}
