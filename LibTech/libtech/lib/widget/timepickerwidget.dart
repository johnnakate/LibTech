//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:libtech/widget/button_widget.dart';
//import 'package:libtech/widget/selectrange.dart';
import 'package:time_range_picker/time_range_picker.dart';

class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeRange selectedRange;

  TimeOfDay selectedStartTime = TimeOfDay.now();
  TimeOfDay selectedEndTime = TimeOfDay.now();
  _selectTime(BuildContext context) async {
    final TimeRange result = await showTimeRangePicker(
      //start: start,
      //end: end,
      context: context,
      rotateLabels: false,
      ticks: 12,
      ticksColor: Colors.grey,
      ticksOffset: -12,
      labels: ["12 AM", "3 AM", "6 AM", "9 AM", "12 PM", "3 PM", "6 PM", "9 PM"]
          .asMap()
          .entries
          .map((e) {
        return ClockLabel.fromIndex(idx: e.key, length: 8, text: e.value);
      }).toList(),
      labelOffset: -30,
      padding: 55,
      interval: Duration(minutes: 30),
      disabledTime: TimeRange(
          startTime: TimeOfDay(hour: 17, minute: 00),
          endTime: TimeOfDay(hour: 7, minute: 30)),
      maxDuration: Duration(hours: 4),
    );
    print("result " + result.toString());
    if (result != null)
      setState(() {
        selectedRange = result;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  title: 'TimeRangeSelector',
                  text: 'Select Time',
                  onClicked: () async => _selectTime(context),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  //"Start: ${start.toString()} to End: ${end.toString()}",
                  "${selectedRange.toString()}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//https://medium.com/swlh/flutter-get-data-from-a-rest-api-and-save-locally-in-a-sqlite-database-9a9de5867939

/*async {
              TimeRange result = await showTimeRangePicker(
                context: context,
                rotateLabels: false,
                ticks: 12,
                ticksColor: Colors.grey,
                ticksOffset: -12,
                labels: [
                  "12 AM",
                  "3 AM",
                  "6 AM",
                  "9 AM",
                  "12 PM",
                  "3 PM",
                  "6 PM",
                  "9 PM"
                ].asMap().entries.map((e) {
                  return ClockLabel.fromIndex(
                      idx: e.key, length: 8, text: e.value);
                }).toList(),
                labelOffset: -30,
                padding: 55,
                start: TimeOfDay(hour: 12, minute: 0),
                end: TimeOfDay(hour: 18, minute: 0),
                disabledTime: TimeRange(
                    startTime: TimeOfDay(hour: 17, minute: 30),
                    endTime: TimeOfDay(hour: 6, minute: 30)),
                maxDuration: Duration(hours: 4),
              );

              print("result " + result.toString());
            },

             onPressed: () => _selectDate(context),
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: DatePickerDemo(),
    );
  }
}


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
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text(
                'Select date',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}*/
