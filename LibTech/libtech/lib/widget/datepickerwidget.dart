import 'package:flutter/material.dart';

import 'button_widget.dart';

/// Which holds the selected date
/// Defaults to today's date.
DateTime selectedDate = DateTime.now();

class DatePickerDemo extends StatefulWidget {
  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  /// Which holds the selected date
  /// Defaults to today's date.
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
      helpText: 'SELECT RESERVATION DATE',
      confirmText: 'SELECT',
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                ButtonWidget(
                  title: 'DateSelector',
                  text: 'Select Date',
                  onClicked: () async => _selectDate(context),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
