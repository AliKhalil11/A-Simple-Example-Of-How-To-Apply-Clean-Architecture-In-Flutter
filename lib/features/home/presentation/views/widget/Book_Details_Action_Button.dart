// ignore_for_file: camel_case_types, file_names

import 'package:book_market/core/utilis/widget/Action_Button.dart';
import 'package:flutter/material.dart';

class Book_Details_Action_Button extends StatelessWidget {
  const Book_Details_Action_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: Action_Button(
            text: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: Action_Button(
            fontSize: 16,
            text: 'DownLoad',
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}
