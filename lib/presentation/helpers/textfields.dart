import 'package:flutter/material.dart';

Widget loginTextField(String text, String? suffix) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 31),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
        suffixText: suffix,
        suffixStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
