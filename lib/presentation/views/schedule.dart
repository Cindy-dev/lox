import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lox/presentation/helpers/navigator.dart';
import 'package:lox/presentation/helpers/schedule_helper.dart';
import 'package:lox/presentation/widgets/appointment_add.dart';
import 'package:lox/presentation/views/payment.dart';

class ScheduleDate extends StatefulWidget {
  const ScheduleDate({Key? key}) : super(key: key);

  @override
  State<ScheduleDate> createState() => _ScheduleDateState();
}

class _ScheduleDateState extends State<ScheduleDate> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 40, 5, 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      DateTime.now().timeZoneName,
                      style: const TextStyle(
                          color: Color(0xff929CAD),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      DateTime.now().weekday.toString(),
                      style: const TextStyle(
                          color: Color(0xff091F44),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Container(
                  width: 96,
                  height: 30,
                  margin: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff1648CE),
                      borderRadius: BorderRadius.circular(90)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        size: 15,
                        color: Color(0xffFFFFFF),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            child: DatePicker(
              DateTime.now(),
              width: 60,
              height: 80,
              controller: _controller,
              initialSelectedDate: DateTime.now(),
              selectionColor: const Color(0xffEFF1FC),
              selectedTextColor: const Color(0xff1648CE),
              inactiveDates: [
                DateTime.now().add(Duration(days: 3)),
                DateTime.now().add(Duration(days: 4)),
                DateTime.now().add(Duration(days: 7))
              ],
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 8, bottom: 191),
            child: const Text(
              'Schedule Today',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          scheduleReminder(),
          profileCard(
            () => navigatePush(context, Payment()),
            () => navigatePop(context, ScheduleDate()),
          ),
        ],
      ),
    );
  }
}
