// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:book_market/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utilis/App_Router.dart';
import 'First_Page_Grid_view_Item.dart';

class First_Page_Grid_view extends StatelessWidget {
  const First_Page_Grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GridView(
            padding:const EdgeInsets.all(30),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2.5/4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

            ),
              children:  [
          
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kHomeView);
    
                  },
                  child: First_Page_Grid_view_Item(image: AssetImage(Assets.testi), text: 'click here and wait 5 second',)),
                First_Page_Grid_view_Item(image: AssetImage(Assets.test2), text: '',),
                  First_Page_Grid_view_Item(image: AssetImage(Assets.test3), text: '',),
                First_Page_Grid_view_Item(image: AssetImage(Assets.test4), text: '',),
                


              ]
              );
  }
}