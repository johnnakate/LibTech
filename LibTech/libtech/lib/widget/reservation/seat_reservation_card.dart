import 'package:flutter/material.dart';
import 'package:libtech/screens/currentres.dart';
import 'package:libtech/widget/button_widget.dart';
import 'package:libtech/widget/card_btn.dart';
import 'package:libtech/widget/card_widget/card_type.dart';

class SeatButton extends StatefulWidget {
  //const ({ key }) : super(key: key);

  @override
  _SeatState createState() => _SeatState();
}

class _SeatState extends State<SeatButton> {
  @override
  Widget build(BuildContext context) {
    return TypeReservationWidget(
      title: 'Reserve Seat',
      text: 'View Seat Category',
      onClicked: () {
        Navigator.pop(context);
      },
      subtitle: 'Ideal for Solo Reservation',
    );
  }
}
