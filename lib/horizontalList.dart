import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();

  final String title;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;

  HorizontalList(
      {Key key,
      @required this.title,
      this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5})
      : super(key: key);
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return (Container(
      // color: Colors.green,
      width: w * 10,
      height: h * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(widget.title,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Container(
              // width: 10,
              height: h * 0.14,
              // color: Colors.red,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            widget.image1 ?? 'images/close_enough.jpeg',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            widget.image2 ?? 'images/close_enough.jpeg',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            widget.image3 ?? 'images/close_enough.jpeg',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            widget.image4 ?? 'images/close_enough.jpeg',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            widget.image5 ?? 'images/close_enough.jpeg',
                          ),
                        ),
                      ])))
        ],
      ),
    ));
  }
}
