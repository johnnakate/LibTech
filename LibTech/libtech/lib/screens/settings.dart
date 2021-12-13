import 'package:flutter/material.dart';
import 'package:libtech/screens/settings/account_settings.dart';
import 'package:libtech/screens/settings/application.dart';
import 'package:libtech/screens/settings/notification_settings.dart';
import 'package:libtech/screens/settings/password.dart';
import 'package:libtech/screens/settings/security.dart';
import 'package:libtech/screens/settings/settings_widget/settings_widget.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

int settingsList = 0;
final List<Widget> screens = [
  Account(),
  Password(),
  Security(),
  Application(),
  Notification_Settings(),
];
//ActivePageTab
Widget currentScreen = Settings(); //initial screen in viewport
final PageStorageBucket bucket = PageStorageBucket();

class _SettingsState extends State<Settings> {
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
        //height: 1100,
        //width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            AccountTile(context),
            PasswordTile(context),
            SecurityTile(context),
            ApplicationTile(context),
            NotificationTile(context),
            //weeklyChart(),
          ],
        ),
      ),
    );
  }
}
