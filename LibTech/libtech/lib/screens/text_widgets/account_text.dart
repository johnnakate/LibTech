import 'package:flutter/material.dart';

Widget accountText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 24),
      Text(
        "Account Settings",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      SizedBox(height: 16),
    ],
  );
}
