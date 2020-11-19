import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NetflixBottomBar extends StatefulWidget {
  @override
  _NetflixBottomBarState createState() => _NetflixBottomBarState();
}

class _NetflixBottomBarState extends State<NetflixBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "This is Netflix App",
                  style: TextStyle(fontSize: 25.0, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        height: 48,
        items: <Widget>[
          Icon(Icons.search, size: 24, color: Colors.black),
          Icon(Icons.home, size: 24, color: Colors.black),
          Icon(Icons.favorite, size: 24, color: Colors.black)
        ],
        onTap: (index) {
          debugPrint('Current Index Is $index');
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 1,
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}

// child: Align(
// alignment: FractionalOffset.bottomCenter,
// child: Scaffold(
// bottomNavigationBar: CurvedNavigationBar(
// items: <Widget>[
// Icon(Icons.home, size: 20, color: Colors.black,),
// Icon(Icons.favorite, size: 20, color: Colors.black,),
// Icon(Icons.account_circle, size: 20, color: Colors.black,)
// ],
// onTap: (index){
// debugPrint('Current Index Is $index');
// },
// ),
// ),
// ),
