import 'package:flutter/material.dart';
import './horizontalList.dart';

class TrailerWidget extends StatefulWidget {
  TrailerWidget(
      {Key key,
      this.date,
      this.description,
      this.coverImage,
      this.logo,
      this.tags,
      this.title})
      : super(key: key);

  final String date;
  final String description;
  final String coverImage;
  final String logo;
  final String tags;
  final String title;

  @override
  _TrailerWidgetState createState() => _TrailerWidgetState();
}

class _TrailerWidgetState extends State<TrailerWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
        width: w,
        height: h * 0.7,
        // color: Colors.green,
        child: Column(
          children: [
            Container(
                width: w,
                height: h * 0.26,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Image.asset(
                        widget.coverImage ?? 'images/sevendeadlysins.jpg',
                        fit: BoxFit.fill),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(18),
                height: h * 0.1,
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Image.asset(
                      widget.logo ?? 'images/sevendeadlylogo.png',
                      scale: 10,
                      fit: BoxFit.cover,
                    )),
                    Row(children: [
                      Column(children: [
                        Icon(Icons.notifications_outlined, color: Colors.white),
                        Text('Remind Me', style: TextStyle(color: Colors.white))
                      ]),
                      SizedBox(width: 30),
                      Column(children: [
                        Icon(Icons.info, color: Colors.white),
                        Text('Info', style: TextStyle(color: Colors.white))
                      ])
                    ])
                  ],
                )),
            Container(
                height: h * 0.2,
                width: w,
                // color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.date ?? 'Season 5 on 28 June',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      Text(widget.title ?? 'The Seven Deadly Sins',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(
                          widget.description ??
                              'While Meliodas absords the Commandments so hee can become the Demon King and save Elizabeth, Ban roams through purgatory to save his captains Soul',
                          style: TextStyle(color: Colors.grey)),
                      Text(
                          widget.tags ??
                              'Exciting | Fantasy Anime | Action Anime | Ensemble | Japanese',
                          style: TextStyle(color: Colors.white)),
                    ]))
          ],
        ));
  }
}
