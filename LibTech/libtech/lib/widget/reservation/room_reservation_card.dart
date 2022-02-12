import 'package:flutter/material.dart';
import 'package:libtech/screens/currentres.dart';
import 'package:libtech/screens/dashboard.dart';
import 'package:libtech/screens/settings.dart';
import 'package:libtech/widget/button_widget.dart';
import 'package:libtech/widget/card_btn.dart';
import 'package:libtech/widget/card_widget/card_type.dart';

class RoomButton extends StatefulWidget {
  //const ({ key }) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<RoomButton> {
  @override
  Widget build(BuildContext context) {
    return TypeReservationWidget(
      title: 'Reserve Room',
      text: 'View Room Category',
      onClicked: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Settings()));
      },
      subtitle: 'Good for group studying 4 to 6 people',
    );
  }
}
