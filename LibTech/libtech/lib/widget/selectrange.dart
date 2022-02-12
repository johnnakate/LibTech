//import 'package:date_picker_example/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_range_picker/time_range_picker.dart';
import 'package:libtech/widget/button_widget.dart';
import 'package:libtech/util/time_of_day_extension.dart';

typedef TimeRangeSelectedCallback = void Function(TimeRangeResult range);

class TimePickerWidget1 extends StatefulWidget {
  final TimeRangeResult initialRange;
  final TimeRangeSelectedCallback onRangeCompleted;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  TimePickerWidget1({
    key,
    this.initialRange,
    this.onRangeCompleted,
    this.startTime,
    this.endTime,
  })  : assert(
            endTime.after(startTime), 'lastTime not can be before firstTime'),
        super(key: key);

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget1> {
  TimeOfDay startTime;
  TimeOfDay endTime;

  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 14, minute: 50),
    TimeOfDay(hour: 15, minute: 20),
  );
  TimeRangeResult _timeRange;

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
    setRange();
  }

  @override
  void didUpdateWidget(TimePickerWidget1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    setRange();
  }

  void setRange() {
    if (widget.initialRange != null) {
      startTime = widget.initialRange.start;
      endTime = widget.initialRange.end;
    }
  }

  String getText() {
    if (startTime == null && endTime == null) {
      return 'Select Time';
    } else {
      final hours = startTime.hour.toString().padLeft(2, '0');
      final minutes = startTime.minute.toString().padLeft(2, '0');
      final endhours = endTime.hour.toString().padLeft(2, '0');
      final endminutes = endTime.minute.toString().padLeft(2, '0');

      //return 'start$hours:$minutes to end $endhours:$endminutes';

      //return 'Selected Range: ${startTime!.start.format(context)} - ${endTime!.end.format(context)}';
    }
  }

  void _endHourChanged(TimeOfDay hour) {
    setState(() => endTime = hour);
    widget.onRangeCompleted(TimeRangeResult(startTime, endTime));
  }

  @override
  Widget build(BuildContext context) => ButtonWidget(
        title: 'Time',
        text: getText(),
        onClicked: () => _selectRange(context),
      );

  Future _selectRange(BuildContext context) async {
    final start = TimeOfDay(hour: 9, minute: 0);
    final end = TimeOfDay(hour: 12, minute: 30);
    final result = await showTimeRangePicker(
      context: context,
      start: startTime ?? start,
      end: endTime ?? end,

      //start: start,
      //end: end,
      //context: context,
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
          startTime: TimeOfDay(hour: 17, minute: 30),
          endTime: TimeOfDay(hour: 6, minute: 30)),
      maxDuration: Duration(hours: 4),
    );
    print("result " + result.toString());

    if (startTime == null && endTime == null) return;

    setState(() => //starttime = newTime
        startTime = result);
  }
}

class TimeRangeResult {
  final TimeOfDay start;
  final TimeOfDay end;

  TimeRangeResult(this.start, this.end);
}
