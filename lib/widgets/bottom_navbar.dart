import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class HBottomNavbar extends StatelessWidget {
  const HBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: blueColor),
      selectedItemColor: blackColor,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      elevation: 0,
      backgroundColor: highlightColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Pengaturan',
        ),
      ],
    );
  }
}
