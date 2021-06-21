import 'package:flutter/material.dart';
import './humourTile.dart';

class Humour extends StatefulWidget {
  Humour({Key key, this.title}) : super(key: key);

  // This widget is the Humour page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HumourState createState() => _HumourState();
}

class _HumourState extends State<Humour> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            HumourTile(
                backgroundImage: 'images/laughs/trainwreck.jpg',
                logo: 'images/logos/trainwreck.png'),
            HumourTile(
                backgroundImage: 'images/laughs/ricknmortyclip.jpeg',
                logo: 'images/logos/ricknmortylogo.png'),
            HumourTile(
                backgroundImage: 'images/laughs/family_reunion.jpg',
                logo: 'images/logos/Family_reunion.png'),
            HumourTile(
                backgroundImage: 'images/laughs/ginny_gerogia.jpeg',
                logo: 'images/logos/ginny_geogia.png'),
            HumourTile(
                backgroundImage: 'images/laughs/breaking_bad.jpeg',
                logo: 'images/logos/breaking_bad.png')
          ],
        ),
      )),
    );
  }
}
