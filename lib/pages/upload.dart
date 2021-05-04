import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:tender322/pages/search/building.dart';
import 'package:tender322/pages/search/building/bathroom/myposts.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  File _imageFile;
  String _myValue;
  String url;
  final formKey = new GlobalKey<FormState>();

  final picker = ImagePicker();

  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void uploadStatusImage() async {
    if (validateAndSave()) {
      final Reference postImageRef =
          FirebaseStorage.instance.ref().child("Bathroom");
      var timeKey = new DateTime.now();
      final UploadTask uploadTask =
          postImageRef.child(timeKey.toString() + ".jpg").putFile(_imageFile);
      var ImageUrl = await (await uploadTask).ref.getDownloadURL();
      url = ImageUrl.toString();
      print("Image Url = " + url);

      saveToDatabase(url);
      goToPostsUI();
    }
  }

  void saveToDatabase(url) {
    var dbTimeKey = new DateTime.now();
    var formatDate = new DateFormat('MMM d, yyyy');
    var formatTime = new DateFormat('EEEE, hh:mm aaa');

    String date = formatDate.format(dbTimeKey);
    String time = formatTime.format(dbTimeKey);

    DatabaseReference ref = FirebaseDatabase.instance.reference();
    var data = {
      "image": url,
      "description": _myValue,
      "date": date,
      "time": time,
    };

    ref.child("Posts").push().set(data); //change into Bathroom_posts
  }

//
  void goToPostsUI() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new HomePage(); // **********************************
    }));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: new Text("Upload Image"),
        centerTitle: true,
      ),
      body: new Center(
        child: _imageFile == null ? Text("Select an Image") : enableUpload(),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add Image',
        child: new Icon(Icons.add_a_photo),
        onPressed: pickImage, //***********************************
      ),
    );
  }

  Widget enableUpload() {
    return Container(
        child: new Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Image.file(
            _imageFile,
            height: 330.0,
            width: 640.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            decoration: new InputDecoration(labelText: 'Description'),
            validator: (value) {
              return value.isEmpty ? 'Description is required' : null;
            },
            onSaved: (value) {
              return _myValue = value;
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          RaisedButton(
            elevation: 10.0,
            child: Text("Add a New Post"),
            textColor: Colors.white,
            color: Colors.orange,
            onPressed: uploadStatusImage, //******************************
          )
        ],
      ),
    ));
  }
}
