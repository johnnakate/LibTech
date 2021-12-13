import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  // const Password({ Key? key }) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),

            //weeklyChart(),
          ],
        ),
      ),
    );
  }
}
