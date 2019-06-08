import 'package:flutter_web/material.dart';
import 'package:flutter_web_challenge_profile/helper/ui_helper.dart';
import 'package:flutter_web_challenge_profile/view/profile.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutState();
  }
}

class _AboutState extends State<AboutPage> {
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
                            style: TextStyle( fontSize: realW(15)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(13)),
                          child: Text(
                            'ABOUT ME',
                            style: TextStyle( fontSize: realW(50)),
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
                            '2016 to present Heading inc.',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: realW(13)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: realH(13),
                          ),
                          child: Text(
                            'Android/Flutter engineer',
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
                          child: Image.asset('Unisa.png'),
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
                        Hero(
                            tag: 'image',
                            child: Image.asset(
                              'crystal-shaw-515211-unsplash.png',
                              width: realW(533),
                              height: realH(762),
                              fit: BoxFit.fill,
                            )),
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
