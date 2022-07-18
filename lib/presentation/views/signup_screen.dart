import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/textfields.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffC4C4C4),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: height * .3,
            color: const Color(0xff1648CE),
            child: Image.asset('asset/image/Group 6.png'),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                ),
              ),
              loginTextField('Email', null),
              loginTextField('Password', ''),
              Container(
                width: 298,
                height: 40,
                alignment: Alignment.center,
                color: Color(0xff000113),
                margin: EdgeInsets.only(top: 24, bottom: 42),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                'Or continue with',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('asset/image/Google auth.png'),
                    Image.asset('asset/image/Facebook auth.png'),
                  ],
                ),
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      children: [
                    TextSpan(text: 'Already have an account?'),
                    TextSpan(text: '  Log in '),
                  ]))
            ],
          ),
        ],
      ),
    );
  }
}
