import 'package:flutter/material.dart';

import './comingSoon.dart';
import './humour.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key, this.title}) : super(key: key);

  // This widget is the BottomBar page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Positioned(
      bottom: 0,
      child: Container(
          alignment: Alignment.bottomCenter,
          width: w,
          height: h * 0.1,
          color: Colors.black,
          child: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w * 0.07,
                        // color: Colors.green,
                        child:
                            Image.asset('images/home.png', color: Colors.white),
                      ),
                      Text('Home',
                          style: TextStyle(fontSize: 8, color: Colors.white)),
                    ]),
                FlatButton(
                  onPressed: () {
                    print('Yess');
                    // Within the `FirstRoute` widget

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComingSoon()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w * 0.07,
                        // color: Colors.green,
                        child: Image.asset('images/credit-card.png',
                            color: Colors.white),
                      ),
                      Text('Coming Soon',
                          style: TextStyle(fontSize: 8, color: Colors.white)),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Humour()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w * 0.07,
                        // color: Colors.green,
                        child: Image.asset('images/humor.png',
                            color: Colors.white),
                      ),
                      Text('Humour',
                          style: TextStyle(fontSize: 8, color: Colors.white)),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: w * 0.07,
                      // color: Colors.green,
                      child:
                          Image.asset('images/search.png', color: Colors.white),
                    ),
                    Text('Search',
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: w * 0.07,
                      // color: Colors.green,
                      child: Image.asset('images/download.png',
                          color: Colors.white),
                    ),
                    Text('Download',
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
