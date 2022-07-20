import 'package:flutter/material.dart';
import 'package:lox/data/model/profile_model.dart';
import 'package:lox/presentation/helpers/navigator.dart';
import 'package:lox/presentation/helpers/profile_row.dart';
import 'package:lox/presentation/views/schedule.dart';

class Profile extends StatelessWidget {
  final ProfileModel profileModel;
  Profile(
    this.profileModel, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      onPressed: () =>
                          navigatePop(context, Profile(profileModel)),
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
                padding: const EdgeInsets.all(16),
                width: 343,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Image.asset(profileModel.imageUrl),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profileModel.name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            profileModel.occupation,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff091F44)),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.people,
                                  color: Color(0xff1648CE)),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    profileModel.occupation,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff091F44)),
                                  ),
                                  Text(
                                    profileModel.patientNumber.toString(),
                                    style: const TextStyle(
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
                child: Column(
                  children: [
                    ratingRow(),
                    const Divider(
                      thickness: 2,
                      indent: 16,
                      endIndent: 16,
                      color: Color(0xffF2F4F7),
                    ),
                    feedback(),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigatePush(
                  context,
                  ScheduleDate(profileModel.name, profileModel.occupation,
                      profileModel.rating, profileModel.imageUrl)),
              child: Container(
                width: 343,
                height: 48,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 10, top: 34),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff1648CE)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.book_online_outlined,
                      color: Color(0xffFFFFFF),
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text('Make an appointment',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
