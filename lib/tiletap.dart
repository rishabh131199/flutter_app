import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mainpage.dart';
import 'library.dart';
import 'premium.dart';
import 'search.dart';

class taptile extends StatefulWidget {

  final Color color;

  const taptile({Key key, this.color}) : super(key: key);
   @override
  _taptileState createState() => new _taptileState();
}

class _taptileState extends State<taptile> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(20, 30, 30, 70),
                Color(0xFF191414),],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(txt[0]),
              backgroundColor: Colors.black,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 20.0,
                ),
//                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> new MainPage()),);
//                },
              onPressed: (){
                  Navigator.pop(context);
              },
              ),

              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(icon: Icon(
                  Icons.more_vert,
                  size: 20.0,
                  color: Colors.white,
                ), onPressed: null)
              ],
            ),

            body: show(index),


          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.grey[900],
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: index,
                showUnselectedLabels: true,
                unselectedItemColor: Colors.white54,
                selectedItemColor: Colors.white,
                onTap: ((int x){
                  setState(() {
                    x++;
                    index=x;
                    show(x);
                  });
                }),
                items: [
                  new BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),
                    title: Text('Home'),),
                  new BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.search),
                    title: Text('Search'),
                  ),
                  new BottomNavigationBarItem(icon: Icon(Icons.library_music),
                    title: Text('Your Library'),
                  ),
                  new BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.spotify),
                    title: Text('Premium'),
                  ),
                ]),
          ),
        ),
    );
  }
}

class text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        children: <Widget>[
          Container(

      child: Align(
        alignment: Alignment.center,
        child: Text(txt[3],
          style: TextStyle(
            color: Colors.white.withOpacity(1.0),
            fontFamily: 'SpotifyFont',
            fontSize: 30.0,
          ),
        ),
      ),
    ),
          Container(

            child: Align(
              alignment: Alignment.center,
              child: Text(tt[3],
                style: TextStyle(
                  color: Colors.grey.withOpacity(1.0),
                  fontFamily: 'SpotifyFont',
                  fontSize: 10.0,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 200,
      child: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(40)),
          Container(

            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 170.0,
                width: 190.0,
                child: Image.asset(
                  imageurl[3],
                  fit: BoxFit.fitHeight,
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}

class ta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            image(),
            Padding(padding: EdgeInsets.all(0.0)),
            text(),
            new InkWell(
              onTap: () => {},
              child: new Container(
                width: 200.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  borderRadius: new BorderRadius.circular(40.0),
                ),
                child: new Center(child: new Text('Play', style: new TextStyle(fontSize: 22.0,fontFamily: 'SpotifyFont', color: Colors.white),),),
              ),
            ),
            Padding(padding: EdgeInsets.all(0.0)),

          ],
        ),
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
  'This Is Billie',
  "Today's top hits",
  "This is Eminem",
  'This Is Billie',
  "Today's top hits",
  'This Is Billie',
  "Today's top hits",
  'This Is Billie',
  "Today's top hits",
];

List<String> tt = [
  'BY SPOTIFY . 16M LIKES',
  "BY SPOTIFY . 16M LIKES",
  "BY SPOTIFY . 16M LIKES",
  'BY SPOTIFY . 16M LIKES',
  "BY SPOTIFY . 16M LIKES",
  'BY SPOTIFY . 16M LIKES',
  "BY SPOTIFY . 16M LIKES",
  'BY SPOTIFY . 16M LIKES',
  "BY SPOTIFY . 16M LIKES",
];
Widget show(int index){
  switch(index){
    case 0: return ta();
    break;
    case 1: return MainPage();
    break;
    case 2: return Search();
    break;
    case 3: return Library();
    break;
    case 4: return Premium();
    break;
  }
}