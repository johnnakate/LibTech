import 'package:flutter/material.dart';
import 'package:libtech/screens/settings/notification_settings.dart';
import 'package:libtech/screens/settings/password.dart';
import 'package:libtech/screens/settings/security.dart';

import '../account_settings.dart';

Widget AccountTile(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Account(),
          ),
        );
      },
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.account_box_rounded, color: Colors.white),
      ),
      title: Text("Account"),
      subtitle: Text("Change Account Settings"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget PasswordTile(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Password(),
          ),
        );
      },
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.password_rounded, color: Colors.white),
      ),
      title: Text("Password"),
      subtitle: Text("Change your password"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget SecurityTile(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Security(),
          ),
        );
      },
      title: Text("Security"),
      subtitle: Text("Enable 2 factor auth"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget ApplicationTile(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Notification_Settings(),
          ),
        );
      },
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.delete_forever, color: Colors.white),
      ),
      title: Text("Application"),
      subtitle: Text("Didn't like Libtech? Delete data today"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget NotificationTile(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {},
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.notifications, color: Colors.white),
      ),
      title: Text("Notification"),
      subtitle: Text("Enable Notification Settings"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}
