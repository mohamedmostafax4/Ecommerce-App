// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BottomNavBarData extends StatelessWidget {
  const BottomNavBarData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int selectedItem = 0;

    int currentIndex = selectedItem;
    return BottomNavigationBar(
        onTap: (value) {},
        iconSize: 30,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '')
        ]);
  }
}
