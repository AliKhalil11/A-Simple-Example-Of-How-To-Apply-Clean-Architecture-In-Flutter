// ignore_for_file: camel_case_types, unnecessary_import, file_names

import 'package:book_market/core/utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class First_Page_Grid_view_Item extends StatelessWidget {
  const First_Page_Grid_view_Item({super.key, required this.image, required this.text});
  final ImageProvider image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            )),
      ),
      Positioned(
        bottom: 19,
        
        child: Text(
          text,
          style:
              Styles.textStyle16.copyWith(color: Colors.white.withOpacity(0.9),fontSize: 11),
             maxLines: 2,
              textAlign: TextAlign.center,
        ),
        
      ),
    ]);
  }
}
