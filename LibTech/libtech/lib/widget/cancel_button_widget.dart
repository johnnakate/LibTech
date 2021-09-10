import 'package:flutter/material.dart';
import 'package:libtech/screens/currentres.dart';
import 'package:libtech/widget/button_widget.dart';

class CancelButton extends StatefulWidget {
  //const ({ key }) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      title: 'Cancel Button',
      text: 'MAYBE LATER',
      onClicked: () {
        Navigator.pop(context);
      },
    );
  }
}
