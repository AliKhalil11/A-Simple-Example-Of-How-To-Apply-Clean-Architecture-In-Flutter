// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Book_Details_App_Bar extends StatelessWidget {
  const Book_Details_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
