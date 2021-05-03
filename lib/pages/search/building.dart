import 'package:flutter/material.dart';
import 'package:tender322/pages/upload.dart';
import 'package:tender322/pages/home_page.dart';
import 'package:tender322/pages/post.dart';
import 'package:tender322/pages/search/search.dart';
import '../favorites.dart';
import '../account.dart';

class Building extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text("Construction category",
            style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 5, left: 5),
          child: Column(
            children: <Widget>[
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bathroom",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePagelogin())); //*************************
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Brick Masonry & Stone",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cleaning Services",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Deck & Fence",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Doors",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Electrical & Lighting",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Garage & Driveway",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Heating & Cooling",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Kitchen",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Landscaping",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Mounting & Assembly",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Painting & Decoration",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Patio & Backyard",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Plumbing",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Safety & Security",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Storage & Organization",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ButtonTheme(
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Windows",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[900],
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Search',
                style: TextStyle(color: Colors.red),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Favorites',
                style: TextStyle(color: Colors.grey),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorites()));
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Post',
                style: TextStyle(color: Colors.grey),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Post()));
                },
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Account',
                style: TextStyle(color: Colors.grey),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
              ),
            ),
          ]),
    );
  }
}
