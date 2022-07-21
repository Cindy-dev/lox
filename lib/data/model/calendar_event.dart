import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
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

  // Meeting _getMeetingData(int index) {
  //   final dynamic meeting = appointments![index];
  //   late final Meeting meetingData;
  //   if (meeting is Meeting) {
  //     meetingData = meeting;
  //   }
  //
  //   return meetingData;
  // }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay,
      {this.id, this.recurrenceId});
  String eventName;
  Object? id;
  Object? recurrenceId;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}

// class CalendarEvent {
//   final String title;
//   final String description;
//   final DateTime from;
//   final DateTime to;
//   final Color backgroundColor;
//   final bool isAllDay;
//
//   const CalendarEvent({
//     required this.title,
//     required this.description,
//     required this.from,
//     required this.to,
//     this.backgroundColor = Colors.lightGreen,
//     this.isAllDay = false,
//   });
// }
