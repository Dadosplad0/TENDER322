import 'package:flutter/material.dart';
import 'package:tender322/pages/upload.dart';
import 'package:tender322/provider/google_sign_in.dart';

import 'package:firebase_database/firebase_database.dart';

import '../../../account.dart';
import '../../../favorites.dart';
import '../../search.dart';
import 'posts.dart';

class HomePage extends StatefulWidget {
  //change to bathroom********************************************
  HomePage({
    this.auth,
    this.onSignedOut,
  });
  final GoogleSignInProvider auth;
  final VoidCallback onSignedOut;

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  ////<<<<<<<<<<<<<<<<<<<<<<<
  List<Posts> postsList = []; /////////

  @override //////
  void initState() {
    //////
    super.initState(); ////////

    DatabaseReference postsRef =
        FirebaseDatabase.instance.reference().child("Posts"); ///////

    postsRef.once().then((DataSnapshot snap) {
      //////
      var KEYS = snap.value.keys; ////////
      var DATA = snap.value; ////////

      postsList.clear(); /////

      for (var individualKey in KEYS) {
        //////
        Posts posts = new Posts(
          ///////
          DATA[individualKey]['image'], //////
          DATA[individualKey]['description'], ///////
          DATA[individualKey]['data'], //////
          DATA[individualKey]['time'], //////
        );

        postsList.add(posts); /////
      }

      setState(() {
        /////
        print('Length : $postsList.length'); //////
      });
    });
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  void _logoutUser() async {
    try {
      await widget.auth.logout();
      widget.onSignedOut();
    } catch (e) {
      print(e.toString());
    }
  }

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bathroom search result'), // change name
      ),
      body: new Container(
        //>>>>>>>>>>
        child: postsList.length == 0
            ? new Text(" No Post available ")
            : new ListView.builder(
                itemCount: postsList.length,
                itemBuilder: (_, index)
                    //itemBuilder: (BuildContext _, int index ) //<-----
                    {
                  return PostsUI(
                      postsList[index].image,
                      postsList[index].description,
                      postsList[index].date,
                      postsList[index].time);
                }),
      ), //<<<<<<<<<<<<<<<<<<<<<<<
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[900],
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
                style: TextStyle(color: Colors.red),
              ),
              icon: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
                onPressed: () {},
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

  // Designing Posts UI <remove from Text field><??'defaut value'>

  Widget PostsUI(String image, String description, String date, String time) {
    return new Card(
        elevation: 10.0,
        margin: EdgeInsets.all(15.0),
        child: new Container(
          padding: new EdgeInsets.all(14.0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Image.network(image, fit: BoxFit.cover),
                SizedBox(
                  height: 10.0,
                ),
                new Text(
                  description, //= null ?  "true" : "False", //??'default value'
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.left,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      time,
                      style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ]),
        ));
  }
}
