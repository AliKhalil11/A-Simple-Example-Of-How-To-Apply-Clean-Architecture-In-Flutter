// ignore_for_file: camel_case_types, file_names



import 'package:flutter/material.dart';



class Custom_Listview_Image_Item extends StatefulWidget {
  const Custom_Listview_Image_Item({super.key, required this.image});
  final String image;

  @override
  State<Custom_Listview_Image_Item> createState() => _Custom_Listview_Image_ItemState();
}

class _Custom_Listview_Image_ItemState extends State<Custom_Listview_Image_Item> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
           
            image: DecorationImage(
              image: NetworkImage(widget.image),fit: BoxFit.fill
            )
            
                
                ),
                
              
      ),
    );
  }
}
