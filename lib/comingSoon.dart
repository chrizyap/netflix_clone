import 'package:flutter/material.dart';
import './horizontalList.dart';
import './trailerWidget.dart';

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
                          Container(
                              margin: EdgeInsets.all(5),
                              width: w,
                              height: h * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Coming Sooon',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Row(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.only(top: 20),
                                          width: w * 0.1,
                                          height: h * 0.06,
                                          // color: Colors.white,
                                          child: Image.asset(
                                              'images/cast_tv.png',
                                              color: Colors.white)),
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
                              )),
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
            Positioned(
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
                                child: Image.asset('images/home.png',
                                    color: Colors.white),
                              ),
                              Text('Home',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white)),
                            ]),
                        FlatButton(
                          onPressed: () {
                            print('Yess');
                            // Within the `FirstRoute` widget
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
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white)),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: w * 0.07,
                              // color: Colors.green,
                              child: Image.asset('images/humor.png',
                                  color: Colors.white),
                            ),
                            Text('Humour',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: w * 0.07,
                              // color: Colors.green,
                              child: Image.asset('images/search.png',
                                  color: Colors.white),
                            ),
                            Text('Search',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
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
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
