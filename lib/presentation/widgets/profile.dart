import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lox/presentation/helpers/profile_row.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff1648CE),
                    )),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail_rounded,
                      color: Color(0xff1648CE),
                    )),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 112,
              margin: const EdgeInsets.only(left: 8, right: 9),
              padding: EdgeInsets.all(16),
              width: 343,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Image.asset('asset/image/icon.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Seun Olumide',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          'Nurse',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff091F44)),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.people, color: Color(0xff1648CE)),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'Nurse',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff091F44)),
                                ),
                                Text(
                                  '350+',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff091F44)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          profileRow(),
          profileRowButton(),
          Center(
            child: Container(
              height: 296,
              width: 343,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xffFFFFFF)),
              child: Column(children: [
                ratingRow(),
              ],),
            ),

          )
        ],
      ),
    );
  }
}
