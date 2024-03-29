// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:book_market/constants.dart';

import 'package:flutter/material.dart';

import 'Drawa.dart';
import 'First_Page_Grid_view.dart';

class First_Page_View_Body extends StatelessWidget {
  const First_Page_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          )
        ],
      ),
      drawer: const Drawar(),
      body: First_Page_Grid_view(),
    );
  }
}
