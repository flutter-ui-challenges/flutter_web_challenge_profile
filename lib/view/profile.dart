import 'package:flutter_web/material.dart';
import 'package:flutter_web_challenge_profile/helper/ui_helper.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<ProfilePage> {
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "ABOUT ME",
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: realW(93), bottom: realH(34)),
                        child: Text(
                          "PORTFOLIO",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
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
                  width: realW(315),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
                        Hero(
                          tag: "tag",
                          child: Padding(
                            padding: EdgeInsets.only(bottom: realH(13)),
                            child: Text(
                              'PORTFILIO',
                              style: TextStyle(fontSize: realW(50)),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: realH(10)),
                            child: Hero(
                                tag: 'image',
                                child: Image.asset(
                                  index % 2 == 0
                                        ? 'crystal-shaw-515211-unsplash.png'
                                        : 'joshua-rawson-harris-495411-unsplash.png',
                                  width: realW(232),
                                  height: realH(287),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topLeft,
                                ))),
                        Hero(
                          tag: 'desc',
                          child: Material(
                            child: Container(
                              width: realW(263),
                              color: Colors.transparent,
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
                                  fontSize: realW(12),
                                  height: realH(2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: realH(12.0)),
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
                  width: realW(461),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: realH(176), bottom: realH(57)),
                          child: Image.asset(
                            'iPhoneXxc.png',
                            width: double.infinity,
                            height: realH(445),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Image.asset(
                          'Statusdark.png',
                          height: realH(222),
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: realW(310),
                  height: double.infinity,
                  padding: EdgeInsets.only(left: realW(28)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: realW(200),
                              top: realH(43),
                              bottom: realH(80)),
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
                          padding: EdgeInsets.only(bottom: realH(34)),
                          child: Text(
                            """DRIBBLE REDESIGN
                            
made much more easier to use with
more features, the ui is do good you
can take your eye off the app layout 
can be changed from grid to list, 2 
different accounts business account 
or just a normal one...….read more

Colors
                            """,
                            style: TextStyle(
                                fontSize: realW(11),
                                height: 1.75,
                                letterSpacing: 1.5),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(34)),
                          child: Image.asset(
                            "group.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(13)),
                          child: Image.asset('ide.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(34)),
                          child: Text(
                            """DRIBBLE REDESIGN
                            
user profile, dark mode an light mode
the ui is simple and easy to use, attractive
colors to win the users attention the 
inspiration of this design drawn from the
new Facebook messenger ui…...read more


Colors
                            """,
                            style: TextStyle(
                                fontSize: realW(11),
                                height: 1.75,
                                letterSpacing: 1.5),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(34)),
                          child: Image.asset(
                            "group.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: realH(13)),
                          child: Image.asset('ide.png'),
                        ),
                      ],
                    ),
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
