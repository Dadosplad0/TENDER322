import 'package:flutter/material.dart';
import 'package:tender322/pages/home_page.dart';
import 'package:tender322/pages/password.dart';
import 'package:tender322/pages/post.dart';
import 'package:tender322/pages/search.dart';
import 'package:tender322/pages/terms.dart';
import 'package:tender322/widget/logged_in_widget.dart';
import 'package:tender322/widget/sign_up_widget.dart';
import 'about.dart';
import 'favorites.dart';
import 'location.dart';
import 'login.dart';
import 'package:tender322/widget/background_painter.dart';
import 'package:tender322/widget/google_signup_button_widget.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text("account", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
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
                      "about the app",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
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
                      "terms of use",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Terms()));
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
                      "change password",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Password()));
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
                      "default location",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Location()));
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
                      "sign up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
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
