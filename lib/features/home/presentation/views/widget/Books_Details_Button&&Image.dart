// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/style.dart';
import 'Book_Details_Action_Button.dart';
import 'Book_ListView_item2.dart';
import 'custom_ListView_image_item.dart';

class Book_Details_Image_Button extends StatelessWidget {
  const Book_Details_Image_Button({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: const Custom_Listview_Image_Item(image:( '${Assets.test5}'),),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookListViewItem2(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const Book_Details_Action_Button(),
      ],
    );
  }
}
