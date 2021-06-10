import 'package:flutter/material.dart';
import './horizontalList.dart';
import './trailerWidget.dart';
import './appBar.dart';

class ComingSoon extends StatefulWidget {
  ComingSoon({Key key, this.title}) : super(key: key);

  // This widget is the ComingSoon page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Column(
                        children: [
                          NextflixAppBar(),
                          Container(
                              padding: EdgeInsets.all(10),
                              width: w,
                              height: h * 0.05,
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                        width: w * 0.1,
                                        // height: h * 0.15,
                                        decoration: BoxDecoration(
                                            // color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(19))),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.notifications_outlined,
                                          color: Colors.white, size: 40),
                                    ),
                                  ]),
                                  SizedBox(width: 20),
                                  Text('Notifications',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      color: Colors.white),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: h * 0.09,
                                  width: w * 0.4,
                                  // color: Colors.red,
                                  child: Image.asset('images/lego-batman.jpeg',
                                      fit: BoxFit.cover)),
                              Container(
                                width: w * 0.55,
                                height: h * 0.09,

                                padding: EdgeInsets.all(10),
                                // color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Title',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Subtitle, short and sweet',
                                        style: TextStyle(color: Colors.white)),
                                    Text('01 June',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: h * 0.09,
                                  width: w * 0.4,
                                  // color: Colors.green,
                                  child: Image.asset('images/die-hard.png',
                                      fit: BoxFit.fill)),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: w * 0.55,
                                height: h * 0.09,
                                // color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Title',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Subtitle, short and sweet',
                                        style: TextStyle(color: Colors.white)),
                                    Text('01 June',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 50),
                  TrailerWidget(),
                  TrailerWidget(date: 'Season 2 30 June')
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
