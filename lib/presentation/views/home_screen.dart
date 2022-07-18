import 'package:flutter/material.dart';
import 'package:lox/presentation/widgets/checkout.dart';
import 'package:lox/presentation/widgets/home_widget.dart';
import 'package:lox/presentation/widgets/payment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Payment(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xff929CAD),
        selectedItemColor: const Color(0xff1648CE),
        unselectedLabelStyle: const TextStyle(color: Color(0xff929CAD)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_sharp), label: 'Appointment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
