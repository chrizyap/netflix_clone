import 'package:flutter/material.dart';
import './horizontalList.dart';
import './comingSoon.dart';
import './humour.dart';
import './bottomBar.dart';
import './homePage.dart';
import './search.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _tabs = [HomePage(), ComingSoon(), Humour(), Search()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            currentIndex: _currentIndex,
            fixedColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.style_outlined), label: 'Coming Soooon'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions_outlined), label: 'Humour'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
            ]),
        body: _tabs[_currentIndex]);
  }
}
