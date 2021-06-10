import 'package:flutter/material.dart';
import './horizontalList.dart';

class NextflixAppBar extends StatefulWidget {
  NextflixAppBar({Key key, this.title}) : super(key: key);

  // This widget is the NextflixAppBar page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NextflixAppBarState createState() => _NextflixAppBarState();
}

class _NextflixAppBarState extends State<NextflixAppBar> {
  final _tabs = [];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(

        // padding: EdgeInsets.only()
        margin: EdgeInsets.all(5),
        width: w,
        height: h * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 20),
                width: w * 0.1,
                height: h * 0.06,
                // color: Colors.green,
                child: Image.asset('images/netflix_logo.png')),
            Row(
              children: [
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(top: 20),
                    width: w * 0.1,
                    height: h * 0.06,
                    // color: Colors.white,
                    child:
                        Image.asset('images/cast_tv.png', color: Colors.white)),
                SizedBox(width: 10),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    width: w * 0.1,
                    height: h * 0.06,
                    // color: Colors.green,
                    child: Image.asset(
                      'images/avatar.png',
                    ))
              ],
            ),
          ],
        ));
  }
}
