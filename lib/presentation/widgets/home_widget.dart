import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Image.asset('asset/image/Rectangle 4053.png'),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 30, left: 22),
            child: const Text(
              'Hire a nurse',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
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
            title: const Text(
              'Seun Olumide',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.6),
            ),
            subtitle: const Text(
              'Gbagada',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                  color: Color(0xffAEAEB3)),
            ),
            trailing: const Text(
              '\$250',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xffFF4658)),
            ),
          ),
        ],
      ),
    );
  }
}
