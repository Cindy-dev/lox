import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lox/presentation/views/home_screen.dart';
import 'package:lox/presentation/widgets/calendar.dart';
import 'package:lox/presentation/widgets/home_widget.dart';

import '../helpers/navigator.dart';
import '../helpers/schedule_helper.dart';

class AddAppointment extends StatefulWidget {
  const AddAppointment({Key? key}) : super(key: key);

  @override
  State<AddAppointment> createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {
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
            padding: const EdgeInsets.only(left: 12, top: 20),
            child: IconButton(
                onPressed: () {
                  navigatePush(context, const HomeScreen());
                },
                icon: Icon(Icons.arrow_back)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 17, 5, 13),
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
              margin: const EdgeInsets.only(top: 8, bottom: 50),
              child: const Calendar()
              // DatePicker(
              //   DateTime.now(),
              //   width: 60,
              //   height: 80,
              //   controller: _controller,
              //   initialSelectedDate: DateTime.now(),
              //   selectionColor: const Color(0xffEFF1FC),
              //   selectedTextColor: const Color(0xff1648CE),
              //   inactiveDates: [
              //     DateTime.now().add(Duration(days: 3)),
              //     DateTime.now().add(Duration(days: 4)),
              //     DateTime.now().add(Duration(days: 7))
              //   ],
              //   onDateChange: (date) {
              //     // New date selected
              //     setState(() {
              //       _selectedValue = date;
              //     });
              //   },
              // ),
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 60, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('asset/image/Group 33570.png'),
                    Container(
                        height: 50,
                        child: Image.asset('asset/image/Vector 7.png'))
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Seun Olumide',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '9:00 AM',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Image.asset('asset/image/Frame.png'),
              ],
            ),
          ),

          // Spacer(),
          //  Container(
          //    width: 326,
          //    height: 50,
          //    margin: const EdgeInsets.only(left: 18, right: 15, bottom: 30),
          //    alignment: Alignment.center,
          //    decoration:
          //        BoxDecoration(border: Border.all(style: BorderStyle.solid)),
          //    child: const Text(
          //      'Add Appointment',
          //      style: TextStyle(
          //          fontSize: 15,
          //          fontWeight: FontWeight.w500,
          //          color: Color(0xff3E3E50)),
          //    ),
          //  ),
        ],
      ),
    );
  }
}
