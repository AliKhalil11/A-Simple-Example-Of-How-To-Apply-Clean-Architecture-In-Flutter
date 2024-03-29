// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import '../../../../../core/utilis/style.dart';

class Book_Details_Text extends StatelessWidget {
  const Book_Details_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'You can also like',
        style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.w600,
        ),
      )
    ]);
  }
}
