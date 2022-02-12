import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 40),

          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.orange,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Profile and Account Settings",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          // buildAccountOption(context, "Profile"),
          // buildAccountOption(context, "Recent Activity"),
          AccountTile(context),
          PasswordTile(context),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.orange,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Others",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          SecurityTile(context),
          ApplicationTile(context),
          NotificationTile(context),
        ]),
      ),
    );
  }
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Account(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}

// Widget buildLogout()=> SimpleSettingsTile(
//   title: 'Logout',
//   subtitle:'',
//   leading: IconWidget(icon:Icons.logout,color:Colors.blue),
//   onTap: ()=> Utils.showSnackBar(context, 'Logout'),);