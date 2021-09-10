// import 'package:flutter/material.dart';
// import 'package:libtech/auth.dart';
// //import 'package:libtech/sceens/home.dart';

// void main()=> runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.orange,
//       ),
//       home: Auth(),
//      // home: Home(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:libtech/screens/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'LibTech';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: OnBoarding(),
      );
}