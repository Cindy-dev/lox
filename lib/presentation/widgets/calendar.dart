import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../logic/view_model/calendar_vm.dart';
import '../../logic/view_model_provider.dart';

class Calendar extends StatefulHookConsumerWidget{
  const Calendar({Key? key}) : super(key: key);

  @override
  ConsumerState<Calendar> createState() => _CalendarState();
}

class _CalendarState extends ConsumerState<Calendar> {
  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(calendarVM);
    final readViewModel = ref.read(calendarVM);
    return SfCalendar(
      initialSelectedDate: DateTime.now(),
      cellBorderColor: Colors.transparent,
      view: CalendarView.day,
      dataSource:
      MeetingDataSource(viewModel.getDataSource()),
    );
  }

}