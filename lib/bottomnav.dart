import 'package:flutter/material.dart';
import 'package:growupp_parent/Your_Child.dart';
import 'package:growupp_parent/dashboard.dart';
import 'package:growupp_parent/profile.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List list = [DashBoardScreen(), Your_Child(), Profile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color.fromRGBO(74, 42, 81, 1),
        // showUnselectedLabels: false,
        elevation: 10,
        iconSize: 25.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
         
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromRGBO(74, 42, 81, 1),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Color.fromRGBO(74, 42, 81, 1)),
            label: 'Your_Child',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(74, 42, 81, 1)),
            label: 'Profile',
          ),
        ],
      ),
      body: list[currentIndex],
    );
  }
}
