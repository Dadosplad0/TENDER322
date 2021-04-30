import 'package:flutter/material.dart';
import 'package:tender322/pages/bathroom.dart';
import 'account.dart';
import 'favorites.dart';
import 'post.dart';
import 'search/search.dart';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';

import 'package:multi_image_picker/multi_image_picker.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[800],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: const Text('Plugin example app'),
          ),
          body: Column(
            children: <Widget>[
              Center(child: Text('Error: $_error')),
              ElevatedButton(
                child: Text("Pick images"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bathroom()));
                },
              ),
              Expanded(
                child: buildGridView(),
              )
            ],
          ),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Favorites()));
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
              ])),
    );
  }
}
