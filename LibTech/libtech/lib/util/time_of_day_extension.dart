import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  int compare(TimeOfDay other) {
    return this.inMinutes() - other.inMinutes();
  }

  int inMinutes() {
    return this.hour * 60 + this.minute;
  }

  bool before(TimeOfDay other) {
    return this.compare(other) < 0;
  }

  bool after(TimeOfDay other) {
    return this.compare(other) > 0;
  }

  Future<TimeOfDay> add({int minutes}) async {
    final total = this.inMinutes() + minutes;
    return TimeOfDay(hour: total ~/ 60, minute: total % 60);
  }

  Future<TimeOfDay> subtract({int minutes}) async {
    final total = this.inMinutes() - minutes;
    return TimeOfDay(hour: total ~/ 60, minute: total % 60);
  }
}
