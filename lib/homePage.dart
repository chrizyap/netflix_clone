import 'package:flutter/material.dart';
import './horizontalList.dart';
import './appBar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the HomePage page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tabs = [];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        color: Colors.black,
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                        width: w,
                        height: h * 0.5,
                        child: Image.asset('images/blue-exorcist.jpeg',
                            fit: BoxFit.fill)),
                    Column(
                      children: [
                        Container(
                            width: w,
                            height: h * 0.05,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Series',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Films',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      ],
                    ),
                    NextflixAppBar(),
                  ],
                ),

                Container(
                    width: w,
                    height: h * 0.07,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            Text(
                              'My List',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: h * 0.04,
                            width: w * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.play_arrow),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Text(
                              'My List',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HorizontalList(
                      title: 'My List',
                      image1: 'images/demon_slayerr.png',
                      // image2: 'images/close_enough.jpeg',
                      // image3: 'images/close_enough.jpeg',
                      // image4: 'images/close_enough.jpeg',
                      // image5: 'images/close_enough.jpeg',
                    ),
                    HorizontalList(
                      title: 'Continue Watching for Nicki',
                      image1: 'images/demon_slayerr.png',
                      // image2: 'images/close_enough.jpeg',
                      // image3: 'images/close_enough.jpeg',
                      // image4: 'images/close_enough.jpeg',
                      // image5: 'images/close_enough.jpeg',
                    ),
                    HorizontalList(
                      title: 'Popular on Netflix',
                      image1: 'images/demon_slayerr.png',
                      // image2: 'images/close_enough.jpeg',
                      // image3: 'images/close_enough.jpeg',
                      // image4: 'images/close_enough.jpeg',
                      // image5: 'images/close_enough.jpeg',
                    ),
                    HorizontalList(
                      title: 'Trending Now',
                      image1: 'images/demon_slayerr.png',
                      // image2: 'images/close_enough.jpeg',
                      // image3: 'images/close_enough.jpeg',
                      // image4: 'images/close_enough.jpeg',
                      // image5: 'images/close_enough.jpeg',
                    ),
                  ],
                )

                // HorizontalList(title: 'Continue watch for James'),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
