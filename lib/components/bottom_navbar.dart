import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final Function(int index) onTap;
  final List<Map<String, dynamic>> pages;
  final int currentIndex;

  const BottomNavbar(
      {super.key,
      required this.onTap,
      required this.pages,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: pages.map((Map<String, dynamic> page) {
        return BottomNavigationBarItem(
          icon: page['icon'],
          label: page['title'],
        );
      }).toList(),
    );
  }
}
