import 'package:flutter/material.dart';
import 'package:libtech/screens/submittedReservation.dart';
import 'package:libtech/widget/button_widget.dart';

class SubmitButton extends StatefulWidget {
  //const ({ key }) : super(key: key);

  @override
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      title: 'Submit Button',
      text: 'MAKE RESERVATION',
      onClicked: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => submittedReservation()));
      },
    );
  }
}
