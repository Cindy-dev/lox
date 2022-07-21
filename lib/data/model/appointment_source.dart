import 'dart:ui';

import 'package:lox/data/model/calendar_event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AppointmentSource extends CalendarDataSource {
  AppointmentSource(List<Meeting> source) {
    appointments = source;
  }
  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}
