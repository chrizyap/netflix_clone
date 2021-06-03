import 'package:flutter/material.dart';
import './horizontalList.dart';
import './trailerWidget.dart';

class HumourTile extends StatefulWidget {
  HumourTile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HumourTileState createState() => _HumourTileState();
}

class _HumourTileState extends State<HumourTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h,
      color: Colors.black,
      child: Stack(children: [
        Container(
            width: w,
            height: h,
            color: Colors.green,
            child: Image.asset('images/ricknmortyclip.jpeg', fit: BoxFit.fill)),
        Padding(
          padding: EdgeInsets.only(
            top: 50,
          ),
          child: Container(
              width: w * 0.5,
              height: h * 0.1,
              // color: Colors.red,
              child: Image.asset('images/ricknmortylogo.png', scale: 2)),
        ),
        Container(
          // color: Colors.green,
          child: SingleChildScrollView(
              child: Stack(children: [
            Align(
              alignment: FractionalOffset.bottomRight,
              child: Column(
                children: [
                  SizedBox(height: h * 0.65),
                  Container(
                      padding: EdgeInsets.all(10),
                      width: w * 0.2,
                      height: h * 0.3,
                      // color: Colors.red,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.emoji_emotions, color: Colors.white),
                                Text('LOL',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.add, color: Colors.white),
                                Text('My List',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.send, color: Colors.white),
                                Text('Share',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.play_arrow, color: Colors.white),
                                Text('Play',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ])),
                ],
              ),
            ),
          ])),
        )
      ]),
    );
  }
}
