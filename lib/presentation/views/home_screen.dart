import 'package:flutter/material.dart';
import 'package:lox/presentation/widgets/appointment_add.dart';
import 'package:lox/presentation/views/checkout.dart';
import 'package:lox/presentation/widgets/home_widget.dart';
import 'package:lox/presentation/views/payment.dart';
import 'package:lox/presentation/widgets/profile.dart';
import 'package:lox/presentation/views/schedule.dart';
import 'package:lox/presentation/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screenOptions = <Widget>[
    HomeWidget(),
    Search(),
    AddAppointment(),
    Profile(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
