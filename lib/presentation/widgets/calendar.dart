import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../data/model/calendar_event.dart';
import '../../logic/view_model/calendar_vm.dart';
import '../../logic/view_model_provider.dart';

class Calendar extends StatefulHookConsumerWidget {
  String name;
  Calendar(this.name, {Key? key}) : super(key: key);

  @override
  ConsumerState<Calendar> createState() => _CalendarState();
}

class _CalendarState extends ConsumerState<Calendar> {
  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(calendarVM);
    final readViewModel = ref.read(calendarVM);
    return SfCalendar(
        selectionDecoration: BoxDecoration(
          border: Border.all(),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        cellBorderColor: Colors.transparent,
        showCurrentTimeIndicator: true,
        cellEndPadding: 7,
        view: CalendarView.day,
        allowDragAndDrop: true,
        onDragStart: readViewModel.dragStart,
        onDragUpdate: readViewModel.dragUpdate,
        onDragEnd: readViewModel.dragEnd,
        dragAndDropSettings: const DragAndDropSettings(
          indicatorTimeFormat: 'hh:mm',
          showTimeIndicator: true,
          timeIndicatorStyle: TextStyle(backgroundColor: Colors.red)
          // autoNavigateDelay: const Duration(
          //   seconds: 1
          // ),
        ),
        appointmentTextStyle: const TextStyle(
            color: Color(0xff091F44), fontWeight: FontWeight.w600, fontSize: 16),
        dataSource: MeetingDataSource(viewModel.getDataSource(widget.name)),
    );
  }
}
