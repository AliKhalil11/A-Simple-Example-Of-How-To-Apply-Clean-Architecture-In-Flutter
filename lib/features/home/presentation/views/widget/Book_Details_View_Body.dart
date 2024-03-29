// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'Book_Details_App_Bar.dart';
import 'Book_Details_Text.dart';
import 'Books_Details_Button&&Image.dart';

class Book_Details_View_Body extends StatelessWidget {
  const Book_Details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Book_Details_App_Bar(),
                SizedBox(
                  height: 30,
                ),
                Book_Details_Image_Button(),
                SizedBox(
                  height: 30,
                ),
                Book_Details_Text(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
