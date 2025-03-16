import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtend on DateTime {
  String format({String? displayFormat = "dd/MM/yyyy"}) {
    return DateFormat(displayFormat).format(this);
  }

  String get abbreviatedDay => DateFormat.E().format(this);

  // MMMM() returns full month name
  String get fullMonthName => DateFormat.MMMM().format(this);

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension DateTimeNullableX on DateTime? {
  TimeOfDay? get timeOfDay {
    if (this == null) return null;
    return TimeOfDay(
      hour: this!.hour,
      minute: this!.minute,
    );
  }
}
