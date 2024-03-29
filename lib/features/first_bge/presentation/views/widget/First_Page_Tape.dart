// ignore_for_file: annotate_overrides, camel_case_types, file_names

import 'package:book_market/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../First_Page_View.dart';

class First_Page_Tape extends StatefulWidget {
  const First_Page_Tape({super.key});

  @override
  State<First_Page_Tape> createState() => _First_Page_TapeState();
}

class _First_Page_TapeState extends State<First_Page_Tape> {
  int index = 0;

  void _selectscreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {
      'Screen': const First_Page_View(),
      // 'Title':"الصفحة الرئيسية"
    },
    {
      "Screen": const First_Page_View(),
     
    },
    {
      "Screen": const First_Page_View(),
    },
    {
      "Screen": const First_Page_View(),
    },
  ];

  final items = <Widget>[
    const Icon(
      Icons.home,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.star,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.settings,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.person,
      size: 30,
      color: Colors.white,
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _screens[_selectedScreenIndex]["Screen"],
      bottomNavigationBar: CurvedNavigationBar(
        color: kPrimaryColor,
        backgroundColor: Colors.transparent,
        height: 50,
        index: index,
        items: items,
        onTap: _selectscreen,
      ),
    );
  }
}
