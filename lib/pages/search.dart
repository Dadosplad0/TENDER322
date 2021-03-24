import 'package:flutter/material.dart';
import 'package:tender322/pages/post.dart';
import 'favorites.dart';
import 'account.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text("search", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[Icon(Icons.settings)],
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.png'),
              backgroundColor: Colors.blueGrey,
              radius: 40,
            ),
            SizedBox(height: 10),
            Text('Antonio Perex',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('134,679 XP'),
            SizedBox(height: 20),
            Container(
              width: 260,
              height: 40,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(4.0, 4.0),
                        spreadRadius: 1.0)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'BADGES',
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                  Text(
                    'FRIENDS',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'SCORES',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, right: 30, left: 30),
              child: Container(
                  // width: 300,
                  // height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0,
                            offset: Offset(4.0, 4.0),
                            spreadRadius: 1.0)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/medal.png'),
                        ),
                        title: Text('Perfectionist'),
                        subtitle: Text('Finish all lectures of a chapter'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/solution.png'),
                        ),
                        title: Text('Achiever'),
                        subtitle: Text('Complete all excercise'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/formula.png'),
                        ),
                        title: Text('Scholar'),
                        subtitle: Text('Study two courses'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/trophy.png'),
                        ),
                        title: Text('Champion'),
                        subtitle: Text('Finish #1 on the score board'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/bullseye.png'),
                        ),
                        title: Text('Focused'),
                        subtitle: Text('Study everyday for 30 days'),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey[50],
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
