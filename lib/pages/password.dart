import 'package:flutter/material.dart';
import 'package:tender322/pages/post.dart';
import 'package:tender322/pages/search.dart';
import 'account.dart';
import 'favorites.dart';
import 'location.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title:
            const Text("password reset", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.red,
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
                      "Button text",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Account()));
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 100),
              Text(
                'No Courses!',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Choose a Course from courses tab or use the button below to start ',
                style: TextStyle(
                    color: Colors.indigo[500], fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[50],
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
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
                style: TextStyle(color: Colors.red),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.red,
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
