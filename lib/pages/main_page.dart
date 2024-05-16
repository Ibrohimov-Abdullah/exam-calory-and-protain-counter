import 'dart:developer';

import 'package:exam_to_modul7/models/exam_model.dart';
import 'package:exam_to_modul7/pages/page_Three.dart';
import 'package:exam_to_modul7/pages/page_one.dart';
import 'package:exam_to_modul7/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../service/clint_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myIndex = 0;
  List<Widget> pages = const [PageOne(),PageThree(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          pages[myIndex]
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Color(0xFF91C788)),
        onTap: (value) {
          myIndex = value;
          setState(() {});
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""
          ),
        ],
      ),
    );
  }
}
