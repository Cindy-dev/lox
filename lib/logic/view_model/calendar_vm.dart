import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../data/model/appointment_source.dart';
import '../../data/model/calendar_event.dart';

class CalendarVM extends ChangeNotifier {
  AppointmentSource getCalendarDataSource(String name) {
    final List<Meeting> meetings = <Meeting>[];

    meetings
        .add(Meeting(name, DateTime.now(), DateTime.now().add(Duration(minutes: 10)), const Color(0xFFFAE9E9), false));
    return AppointmentSource(meetings);
  }


  List<Meeting> getDataSource(String name) {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9,0,0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings
        .add(Meeting(name, startTime, endTime, const Color(0xFFFAE9E9), false));
    return meetings;
  }

  void dragStart(AppointmentDragStartDetails appointmentDragStartDetails){
    final dynamic appointment = appointmentDragStartDetails.appointment;
    final CalendarResource? resource = appointmentDragStartDetails.resource;
    notifyListeners();
  }

  void dragUpdate(AppointmentDragUpdateDetails appointmentDragUpdateDetails){
    final dynamic appointment = appointmentDragUpdateDetails.appointment;
    final DateTime? draggingTime = appointmentDragUpdateDetails.draggingTime;
    final Offset? draggingOffset = appointmentDragUpdateDetails.draggingPosition;
    final CalendarResource? resource = appointmentDragUpdateDetails.sourceResource;
    final CalendarResource? targetResource = appointmentDragUpdateDetails.targetResource;
    notifyListeners();
  }

  void dragEnd(AppointmentDragEndDetails appointmentDragEndDetails){
    final dynamic appointment = appointmentDragEndDetails.appointment!;
    final CalendarResource? sourceResource = appointmentDragEndDetails.sourceResource;
    final CalendarResource? targetResource = appointmentDragEndDetails.targetResource;
    final DateTime? draggingTime = appointmentDragEndDetails.droppingTime;
    notifyListeners();
  }
}

