import 'package:flutter/material.dart';
import './horizontalList.dart';
import './trailerWidget.dart';
import './appBar.dart';

class ComingSoon extends StatefulWidget {
  ComingSoon({Key key, this.title}) : super(key: key);

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
                                    Text('Lego Batman',
                                        style: TextStyle(color: Colors.white)),
                                    Text('DC & Lego on the go',
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
                                    Text('Die Hard 5 ',
                                        style: TextStyle(color: Colors.white)),
                                    Text('An action packed film',
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
                  TrailerWidget(
                    coverImage: 'images/horizontal-covers/sevenDeadlySins.jpeg',
                    title: 'The Seven Deadly Sins',
                    date: 'Season 5 on June 28',
                    description:
                        'While Meliodas absords the Commandments so hee can become the Demon King and save Elizabeth, Ban roams through purgatory to save his captains Soul',
                    tags:
                        ' Exciting | Fantasy Anime | Action Anime | Ensemble | Japanese',
                  ),
                  TrailerWidget(
                    coverImage:
                        'images/horizontal-covers/recordOfRagnarok.jpeg',
                    logo: 'images/logos/recordOfRagnorok.png',
                    title: 'Record of Ragnarok',
                    date: 'Season 5 on June 28',
                    description:
                        'Before eradicating humankind from the world, the gods give them one last chance to prove themselves worthy of survival. Let the Ragnarok battles begin.',
                    tags: ' Exciting | Fantasy Anime | Action Anime | Ensemble',
                  ),
                  TrailerWidget(
                    coverImage: 'images/horizontal-covers/myHeroAcademia.jpeg',
                    logo: 'images/logos/myHeroAcademia.png',
                    title: 'My Hero Academia',
                    date: 'Season 1 Coming on July 1',
                    description:
                        'Most people in the world have powers called Quirks, but not Izuku. When he meets the worlds greatest Hero, that changes, as does his destiny. ',
                    tags:
                        ' Goofy | Exciting | Feel-Good | Superhero | Teen | Action Anime',
                  ),
                  TrailerWidget(
                    coverImage: 'images/horizontal-covers/residentEvil.jpeg',
                    logo: 'images/logos/residentEvil.png',
                    title: 'RESIDENT EVIL: Infinite Darkness',
                    date: 'Season 1 Coming on 8 July',
                    description:
                        'Years after the horrors of Raccon City, Leon and Claire find themselves consumed by a dark conspiracy when a viral attack ravages the White House. ',
                    tags:
                        ' Gruesome | Gory | Suspenseful | Horror Anime | Adult Animation ',
                  ),
                  TrailerWidget(
                    coverImage: 'images/horizontal-covers/hobbsAndShaw.jpeg',
                    logo: 'images/logos/hobbsAndShaw.png',
                    title: 'Fast & Furious Presents: Hobbs & Shaw',
                    date: 'Coming on 2 July',
                    description:
                        'When US agent Luke Hobbs is sent to England to stop a deadly biothreat, hes forced to team up with his nemesis, mercenary Deckard Shaw.',
                    tags:
                        ' Explosive | Slick | Exciting | Action & Adventure | High-Octane ',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
