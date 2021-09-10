import 'package:flutter/material.dart';

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:panorama/panorama.dart';
import 'package:image_picker/image_picker.dart';

class Tour extends StatefulWidget {
  //final String title;
  //const Tour({Key key, this.title}) : super(key: key);
  @override
  _TourState createState() => _TourState();
}

class _TourState extends State<Tour> {
  File _imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Image.asset(
      //         "assets/images/logo.png",
      //         fit: BoxFit.contain,
      //         height: 30,
      //       ),
      //        toolbarHeight: 60,
      //        backgroundColor: Colors.white,
      //        centerTitle: false,
      //        automaticallyImplyLeading: false,
      //       actions: [
      //         IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
      //       ],
      //   ),
      body: Panorama(
        zoom: 1,
        animSpeed: 1.0,
        child: _imageFile != null ? Image.file(_imageFile) : Image.asset('assets/images/cit.png'),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () async {
          // ignore: deprecated_member_use
          _imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
          setState(() {});
        },
        child: Icon(Icons.panorama),
      ),
    );
  }
}
