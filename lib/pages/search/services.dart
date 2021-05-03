import 'package:flutter/material.dart';
import 'package:tender322/pages/post.dart';
import 'package:tender322/pages/search/search.dart';
import '../favorites.dart';
import '../account.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text("Services", style: TextStyle(color: Colors.white)),
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
                      "Cleaning",
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
                      "Handiwork ",
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
                      "Moving",
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
                      "-----------",
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
