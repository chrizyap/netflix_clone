import 'package:flutter/material.dart';
import './humourTile.dart';

class SearchTile extends StatefulWidget {
  SearchTile({Key key, this.title, this.coverImage}) : super(key: key);

  final String title;
  final String coverImage;

  @override
  _SearchTileState createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.all(10),
        width: w,
        height: h * 0.15,
        // color: Colors.blue,
        child: Row(
          children: [
            Container(
              width: w * 0.5,
              height: h * 0.13,
              // color: Colors.red,
              child: Image.asset(
                widget.coverImage ?? 'images/lego-batman.jpeg',
              ),
            ),
            Container(
              width: w * 0.45,
              height: h * 0.2,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.green,
                    width: w * 0.25,
                    child: Text(widget.title ?? 'Title here',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  Icon(Icons.play_circle_filled, color: Colors.white, size: 50),
                ],
              ),
            ),
          ],
        ));
  }
}
