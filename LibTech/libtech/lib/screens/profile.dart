import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              height: 30,
            ),
             toolbarHeight: 60,
             backgroundColor: Colors.white,
             centerTitle: false,
             automaticallyImplyLeading: false,
            actions: [
              IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
            ],
        ),
    );
  }
}