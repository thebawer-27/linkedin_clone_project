// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:linkedin_clone_project/Bawer/screens/HomeScreen.dart';
import 'package:linkedin_clone_project/shafiqa/mynetwork.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  int _selectedTab = 0;

  // ignore: prefer_final_fields
  List _pages = [
    HomeScreen(),
    MyNetwork(),
    Center(
      child: Text("Posts"),
    ),
    Center(
      child: Text("Nitfication"),
    ),
    Center(
      child: Text("Jobs"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedTab],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (index) => _changeTab(index),
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Image.asset('assets/Icons/icons8-home-page-24.png',
                    color: Colors.grey),
                activeIcon: Image.asset('assets/Icons/home.png'),
              ),
              BottomNavigationBarItem(
                label: 'My Networks',
                icon: Image.asset('assets/Icons/group.png', color: Colors.grey),
                activeIcon: Image.asset('assets/Icons/people.png'),
                
              ),
              BottomNavigationBarItem(
                label: 'Posts',
                icon: Icon(Icons.add_box),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: Image.asset('assets/Icons/notification.png',
                    color: Colors.grey),
                activeIcon: Image.asset(
                  'assets/Icons/notification.png',
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Jobs',
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
