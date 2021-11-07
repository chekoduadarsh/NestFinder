import 'package:flutter/material.dart';
import 'package:nest_finder/utils/constants.dart';

class HouseTile extends StatefulWidget {
  String path;
  String price;
  String address;
  String size;
  String type;
  HouseTile(this.path, this.price, this.address, this.size, this.type);

  @override
  _HouseTileState createState() => _HouseTileState();
}

class _HouseTileState extends State<HouseTile> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
        margin: EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.asset(widget.path)),
                        Positioned(
                            top: 15,
                            right: 15,
                            child: Icon(
                              Icons.favorite_border,
                              color: COLOR_BLACK,
                            )),
                      ]),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            widget.price,
                            style: themeData.textTheme.headline1,
                          ),
                          SizedBox(width: 10),
                          Text(
                            widget.address,
                            style: themeData.textTheme.bodyText2,
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.type,
                            style: themeData.textTheme.headline4,
                          ),
                          SizedBox(width: 10),
                          Text(
                            widget.size,
                            style: themeData.textTheme.bodyText2,
                          )
                        ],
                      ),
                    ]))));
  }
}
