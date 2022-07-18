import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 174, left: 10),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        ),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('asset/image/Vector.png'),
            const Padding(
              padding: EdgeInsets.only(top: 54, bottom: 151),
              child: Text(
                'Done',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: 330,
              height: 51,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.solid)),
              child: const Text(
                'View Appointments',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3E3E50)),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
