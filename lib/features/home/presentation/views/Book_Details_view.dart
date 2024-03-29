// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'widget/Book_Details_View_Body.dart';

class Book_Details_View extends StatelessWidget {
  const Book_Details_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Book_Details_View_Body()),
    );
  }
}
