import 'package:car/control_page.dart';
import 'package:car/home_page.dart';
import 'package:car/share_page.dart';
import 'package:car/status_page.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ControlPage(),
    StatusPage(),
    SharePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1), // 테두리 색상 및 두께
          borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)), // 모서리 둥글게
        ),
        child: ClipRRect( // 모서리가 둥글어지도록 자름
          borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.control_camera),
                label: 'Control',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_outlined),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.device_hub_outlined),
                label: 'Share',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.brown[400],
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: 30,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
