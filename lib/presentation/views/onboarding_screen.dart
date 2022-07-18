import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(0, 36, 0, 48),
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffA9A7A7)),
                ),
              ),
            ),
            const Spacer(),
            Image.asset('asset/image/Charco Hi.png', fit: BoxFit.cover,),
            const Text(
              'Hi there!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const Text(
              'This is Lox Service app development test!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}
