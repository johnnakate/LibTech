import 'package:flutter/material.dart';

class Notification_Settings extends StatefulWidget {
  // const Notification_Settings({ Key? key }) : super(key: key);

  @override
  _Notification_SettingsState createState() => _Notification_SettingsState();
}

class _Notification_SettingsState extends State<Notification_Settings> {
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
