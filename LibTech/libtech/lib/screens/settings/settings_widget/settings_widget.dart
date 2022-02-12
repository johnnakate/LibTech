import 'package:flutter/material.dart';
import 'package:libtech/screens/settings/application.dart';
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
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.security, color: Colors.white),
      ),
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
            builder: (context) => Application(),
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
        child: Icon(Icons.notifications, color: Colors.white),
      ),
      title: Text("Notification"),
      subtitle: Text("Enable Notification Settings"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

// account settings widget

Widget AccountForm(BuildContext context) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
              //border: InputBorder.none,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person, size: 30),
              labelText: "FIRSTNAME",
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.w800,
              )),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
              //border: InputBorder.none,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person, size: 30),
              labelText: "LASTNAME",
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.w800,
              )),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
              //border: InputBorder.none,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.mail, size: 30),
              labelText: "EMAIL",
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.w800,
              )),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
              //border: InputBorder.none,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone, size: 30),
              labelText: "PHONE NUMBER",
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextFormField(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          decoration: InputDecoration(
              //border: InputBorder.none,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.admin_panel_settings, size: 30),
              labelText: "ACCOUNT ROLE",
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
    ],
  );
}

// Widget InputField( Icons Icons.icon, String title, BuildContext context){
//   return Container(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//         child: TextFormField(
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontWeight: FontWeight.bold,
//             fontSize: 22,
//           ),
//           decoration: InputDecoration(
//               //border: InputBorder.none,
//               border: OutlineInputBorder(),
//               prefixIcon: Icon(icon, size: 30),
//               labelText: title,
//               labelStyle: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey[400],
//                 fontWeight: FontWeight.w500,
//               )),
//         ),
//       ),
// }
