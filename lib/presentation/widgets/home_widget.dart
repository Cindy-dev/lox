import 'package:flutter/material.dart';
import 'package:lox/data/model/profile_model.dart';
import 'package:lox/data/repository/profile_repo.dart';
import 'package:lox/presentation/helpers/navigator.dart';
import 'package:lox/presentation/widgets/profile.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ProfileModel profileModel;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
              height: 168,
              width: 365,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/image/Rectangle 4053.png',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(22, 72, 206, 0.69),
                        BlendMode.hardLight)),
              )),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 30, left: 22),
            child: const Text(
              'Hire a nurse',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: profileList.length,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  navigatePush(context, Profile(profileList[i]));
                },
                child: ListTile(
                  leading: Container(
                    height: 37,
                    width: 37,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xff242736),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'S',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    profileList[i].name,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 13.6),
                  ),
                  subtitle: const Text(
                    'Gbagada',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Color(0xffAEAEB3)),
                  ),
                  trailing: Text(
                    '\$${profileList[i].consultationFee}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffff4658)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
