import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget scheduleReminder() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Reminder',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text(
          'Dont forget schedule for upcoming appointment',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff575A61)),
        ),
      )
    ],
  );
}

Widget profileCard(VoidCallback schedule, VoidCallback cancel, String name,
    String occupation, String rating, String imageUrl) {
  return Center(
    child: Container(
      height: 230,
      margin: const EdgeInsets.only(left: 8, right: 9, top: 16),
      padding: EdgeInsets.all(16),
      width: 343,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(16)),
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        occupation,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff091F44)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffEF802F),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Rating',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff394D6D)),
                                ),
                                Text(
                                  '${rating} out of 5',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff091F44)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 113,
                ),
                Image.asset(imageUrl),
              ],
            ),
            Container(
              width: 311,
              height: 48,
              padding: const EdgeInsets.all(16),
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 16, top: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF5FAFF)),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          color: Color(0xff1648CE),
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text('Monday, Dec 23',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff091F44),
                            )),
                      ],
                    ),
                    SizedBox(width: 50),
                    Row(
                      children: const [
                        Icon(
                          Icons.timer,
                          color: Color(0xff1648CE),
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text('12:00-13:00',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff091F44),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: schedule,
                    child: Container(
                      width: 146,
                      height: 38,
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xff1648CE),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        'Schedule',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: cancel,
                    child: Container(
                      width: 146,
                      height: 38,
                      margin: const EdgeInsets.only(right: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border: Border.all(color: const Color(0xff1648CE)),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1648CE)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
