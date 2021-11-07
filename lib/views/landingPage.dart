import 'package:flutter/material.dart';
import 'package:nest_finder/data/data.dart';
import 'package:nest_finder/widgets/house_tile/housetile.dart';
import 'package:nest_finder/widgets/nav_bar/navigation_bar.dart';
import 'package:nest_finder/widgets/search_bar/search_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:nest_finder/widgets/navigattion_drawer/navigation_drawer.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var _VIEW_DATA = [];
  void _updateTiles(String searchText) {
    VIEW_DATA = [];
    setState(() {
      for (int i = 0; i < RE_DATA.length; i++) {
        print(searchText);
        if (RE_DATA[i]["city"] == searchText) {
          VIEW_DATA.add(RE_DATA[i]);
        }
      }
      if (VIEW_DATA.length == 0) {
        VIEW_DATA = RE_DATA;
      }

      _VIEW_DATA = VIEW_DATA;
    });
    print(VIEW_DATA);
  }

  @override
  void initState() {
    _updateTiles("");
    super.initState();
  }

  var _controller = TextEditingController();
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    List<Widget> _housetiles = [
      SizedBox(height: 40),
      Container(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child: TextFormField(
                controller: textController,
                style: themeData.textTheme.headline1,
                onFieldSubmitted: (text) {
                  _updateTiles(textController.text);
                },
                decoration: InputDecoration(
                    hintText: 'City',
                    border: UnderlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _updateTiles(textController.text);
                      },
                      icon: Icon(Icons.search),
                    )),
              )))
    ];
    for (int i = 0; i < _VIEW_DATA.length; i++) {
      if (_VIEW_DATA[i] is Map) {
        _housetiles.add(HouseTile(
            _VIEW_DATA[i]["image_path"],
            "€" + _VIEW_DATA[i]["amount"],
            _VIEW_DATA[i]["addressShot"],
            _VIEW_DATA[i]["area"] + "Sqft",
            _VIEW_DATA[i]["bedrooms"] +
                " Bedroom/ " +
                _VIEW_DATA[i]["bathrooms"] +
                " Bathroom"));
      }
    }
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              body: Container(
                  child: Stack(children: <Widget>[
                ScreenTypeLayout(
                    mobile: Container(child: ListView(children: _housetiles))),
                NavigationBar(),
              ])),
              drawer: NavigationDrawer(),
            ));
  }
}
