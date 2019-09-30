import 'package:flutter/material.dart';
import 'tiletap.dart';

class MainPage extends StatefulWidget {
  final Color color;

  const MainPage({Key key, this.color}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(0, 0, 0, 70),
          Color(0xFF191414),
        ], begin: Alignment.topLeft, end: FractionalOffset(0.3, 0.3)),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: new IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(0.0),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  Recently Played',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => new taptile(
                                                  color: widget.color,
                                                )),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Made for you',
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 23.0,
                            fontFamily: 'SpotifyFont',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 210.0,
                        width: 210.0,
                        child: Image.asset(
                          'assets/darknet.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'Songs you loved most this year,\nall wrapped up',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12.5,
                            fontFamily: 'SpotifyFont'),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recommended for you',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Popular and trending',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Editor's picks",
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sound of India',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Hindi new releases',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Punjabi new releases',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Global new releases',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        height: 225.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '  Best of artists',
                          style: TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 33.0,
                              fontFamily: 'SpotifyFont',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.5), //10
                      ),
                      Container(
                        height: 215.0,
                        child: ListView.builder(
                          itemCount: imageurl.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150.0,
                                  width: 160.0,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new taptile()),
                                      );
                                    },
                                    child: Image.asset(
                                      imageurl[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2.0)),
                                Text(
                                  txt[index],
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontFamily: 'SpotifyFont',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imageurl = [
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/eminem.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
  'assets/Billie.jpeg',
  'assets/download.jpeg',
];
List<String> txt = [
  'This\nIs Billie',
  "Today's\ntop hits",
  "This\nis Eminem",
  'This\nIs Billie',
  "Today's\ntop hits",
  'This\nIs Billie',
  "Today's\ntop hits",
  'This\nIs Billie',
  "Today's\ntop hits",
];
