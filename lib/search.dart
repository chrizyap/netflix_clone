import 'package:flutter/material.dart';
import './searchTile.dart';
import './appBar.dart';

class Search extends StatefulWidget {
  Search({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      // padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Column(children: [
        // NextflixAppBar(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                  width: w * 0.82,
                  height: h * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                  child: TextField(
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0.0),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30.0)),
                      ),
                    ),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Icon(Icons.mic_rounded, color: Colors.white, size: 32))
          ],
        ),
        Container(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            color: Colors.black,
            height: h * 0.77,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Top Searches',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  SearchTile(
                      title: 'Record of Ragnorok',
                      coverImage:
                          'images/horizontal-covers/recordOfRagnarok.jpeg'),
                  SearchTile(
                      title: 'Trese',
                      coverImage: 'images/horizontal-covers/trese.png'),
                  SearchTile(
                      title: 'Demon Slayer',
                      coverImage: 'images/horizontal-covers/demonSlayer.jpeg'),
                  SearchTile(
                      title: 'My Hero Academia',
                      coverImage:
                          'images/horizontal-covers/myHeroAcademia.jpeg'),
                  SearchTile(
                      title: 'One Punch Man',
                      coverImage: 'images/horizontal-covers/onePunchMan.jpeg'),
                  SearchTile(
                      title: 'Seven Deadly Sins',
                      coverImage:
                          'images/horizontal-covers/sevenDeadlySins.jpeg'),
                  SearchTile(
                      title: 'South Park',
                      coverImage: 'images/horizontal-covers/southPark.jpeg'),
                  SearchTile(
                      title: 'Big Mouth',
                      coverImage: 'images/horizontal-covers/bigMouth.jpeg'),
                  SearchTile(
                      title: 'Death Note',
                      coverImage: 'images/horizontal-covers/deathNote.jpeg'),
                  SearchTile(
                      title: 'Shark Trail',
                      coverImage: 'images/horizontal-covers/sharkTail.jpeg'),
                ],
              ),
            )),
      ]),
    );
  }
}
