// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unnecessary_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utilis/App_Router.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/widget/sliding_text.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Navigate_to_home();
    
  }

 
 
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
     const CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage(Assets.logo),
        ),


       const  SizedBox( height: 5.0,),


        SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
  }



   void initSlidingAnimation() {
     animationController = AnimationController(vsync: this,
    duration:const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:const Offset(0,5) ,end:const Offset(0,0)).animate(animationController);
    animationController.forward();
  }



   void Navigate_to_home() {
     Future.delayed(const Duration(seconds: 2),(){
       GoRouter.of(context).push(AppRouter.kFirstPageView);
    });
  }

}

