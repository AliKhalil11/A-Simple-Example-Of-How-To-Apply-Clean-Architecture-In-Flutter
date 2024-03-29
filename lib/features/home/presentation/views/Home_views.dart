// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'widget/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: HomeViewBody()),
    );
  }
}
