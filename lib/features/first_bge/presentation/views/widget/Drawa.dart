// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Drawar extends StatelessWidget {
  const Drawar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("lllll"),
          )
        ],
      ),
    );
  }
}
