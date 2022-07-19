import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profileRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 32, right: 20, left: 20, bottom: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text(
              '275',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Articles',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff091F44)),
            )
          ],
        ),
        Column(
          children: const [
            Text(
              '234',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Following',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff091F44)),
            )
          ],
        ),
        Column(
          children: const [
            Text(
              '123',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Followers',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff091F44)),
            )
          ],
        ),
      ],
    ),
  );
}

Widget profileRowButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 146,
        height: 38,
        margin: const EdgeInsets.only(left: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xff1648CE),
            borderRadius: BorderRadius.circular(12)),
        child: const Text(
          'Follow',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF)),
        ),
      ),
      Container(
        width: 146,
        height: 38,
        margin: const EdgeInsets.only(right: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            border: Border.all(color: const Color(0xff1648CE)),
            borderRadius: BorderRadius.circular(12)),
        child: const Text(
          'Message',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff1648CE)),
        ),
      )
    ],
  );
}

Widget ratingRow() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, top: 17, left: 16, right: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
              children: const [
                Text(
                  'Rating',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff394D6D)),
                ),
                Text(
                  '4.78 out of 5',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff091F44)),
                ),
              ],
            ),
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
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Color(0xffFFFFFF),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget feedback() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, top: 21, left: 16, right: 16),
    child: Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.help_outlined,
              color: Color(0xffEFF1FC),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const  [
                  Text(
                    'Anonymous feedback',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff394D6D)),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                   Text(
                      'Very competent specialist. I am very happy\n'
                      'that there are such professional doctors.\n'
                      'My baby is in safe hands. My child\'s \nhealth is above all',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff091F44)),

                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
          indent: 16,
          endIndent: 16,
          color: Color(0xffF2F4F7),
        ),

      ],
    ),
  );
}
