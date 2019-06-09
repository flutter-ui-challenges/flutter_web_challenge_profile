import 'dart:math';

import 'package:flutter_web/animation.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_challenge_profile/helper/ui_helper.dart';
import 'package:flutter_web_challenge_profile/view/profile.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutState();
  }
}

class _AboutState extends State<AboutPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween(begin: 0.0, end: 762.0).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          index = (index + 1) % 2;
          controller.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Scaffold(
        body: DefaultTextStyle(
          style: TextStyle(
              fontFamily: 'Poppins', color: Colors.black, fontSize: realW(13)),
          child: Container(
            width: screenWidth,
            height: screenHeight,
            padding: const EdgeInsets.all(0),
            child: Row(
              children: <Widget>[
                Container(
                  width: realW(314),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            realW(93), realH(35), 0, realH(110)),
                        child: Icon(
                          Icons.menu,
                          size: realW(24),
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(93), bottom: realH(34)),
                        child: Text(
                          "ABOUT ME",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(93), bottom: realH(34)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(FadeRoute(page: ProfilePage()));
                          },
                          child: Text(
                            "PORTFOLIO",
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(93), bottom: realH(34)),
                        child: Text(
                          "MEMBERS",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(93), bottom: realH(34)),
                        child: Text(
                          "CONTACT",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(115), bottom: realH(34)),
                        child: Container(
                          width: realW(2),
                          height: realH(100),
                          alignment: Alignment.topCenter,
                          color: Color(0xFFC8C1C1).withOpacity(0.38),
                          child: Transform.translate(
                            offset: Offset(0, realH(index * 50.0)),
                            child: Container(
                                width: realW(2),
                                height: realH(50),
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(106), bottom: realH(34)),
                        child: Text(
                          "${index + 1}-2",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: realW(355),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: realH(166), bottom: realH(13)),
                          child: Text(
                            'JAMES CHARLETON',
                            style: TextStyle(fontSize: realW(15)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(13)),
                          child: Text(
                            'ABOUT ME',
                            style: TextStyle(fontSize: realW(50)),
                          ),
                        ),
                        Hero(
                          tag: 'desc',
                          child: Material(
                            child: Container(
                              color: Colors.transparent,
                              width: realW(263),
                              padding: EdgeInsets.only(bottom: realH(10)),
                              child: Text(
                                """
Hi my name is cassian I'm a UI/UX designer
I've beem designing for about 3 years now
I love working with creative  individuals that
can bring strong critique as well as laugh at
latest meme 
                          """,
                                style: TextStyle(
                                    fontSize: realW(12), height: realH(2)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(31),
                          ),
                          child: Text(
                            'SUBSCRIBE TO OUR NEWSLETTER',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: realW(11)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(12),
                          ),
                          child: Text(
                            'EXPERIENCE',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(9),
                          ),
                          child: Text(
                            '2016 to present PayPay inc.',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: realW(13)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(13),
                          ),
                          child: Text(
                            'Sr. User experience designer, Foundations',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: realW(12),
                                color: Color(0xff707070)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(11),
                          ),
                          child: Text(
                            'PROJECTS',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: realW(11)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: realH(12), left: realW(42)),
                          child: Text(
                            """
Establishing design system artifacts and 
processes to improve design across the 
rage of product design
                          """,
                            style: TextStyle(fontSize: realW(11)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Image.asset(
                              index % 2 == 0 ? 'Unisa.png' : 'Pinterest.png'),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: realW(533),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Hero(
                                tag: 'image',
                                child: GestureDetector(
                                  onTap: () {
                                    if (animation.value == 0) {
                                      controller.forward();
                                    }
                                  },
                                  child: Image.asset(
                                    index % 2 == 0
                                        ? 'crystal-shaw-515211-unsplash.png'
                                        : 'joshua-rawson-harris-495411-unsplash.png',
                                    width: realW(533),
                                    height: realH(762),
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            Container(
                              width: realW(533),
                              height: realH(animation.value),
                              decoration: BoxDecoration(
                                  color: Colors.black
                                      .withOpacity(animation.value / 762.0)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: realH(29.0)),
                          child: Hero(
                            tag: 'hire',
                            child: FlatButton(
                              color: const Color(0xff03E691),
                              onPressed: () {},
                              child: Container(
                                  width: realW(214),
                                  height: realH(43),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: realW(13)),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: realW(198),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: realW(103),
                            top: realH(39),
                            bottom: realH(604)),
                        child: Hero(
                          tag: 'search',
                          child: Material(
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.search,
                                size: realW(24),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(70), bottom: realH(34)),
                        child: Text(
                          "RESUME",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(70), bottom: realH(34)),
                        child: Text(
                          "LINKDIN",
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(70), bottom: realH(34)),
                        child: Text(
                          "MEDIUM",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  @override
  Duration get transitionDuration => const Duration(milliseconds: 800);

  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
                opacity: animation,
                child: child,
              ),
        );
}
