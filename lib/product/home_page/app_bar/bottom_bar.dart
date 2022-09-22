import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.iconColor,
  }) : super(key: key);
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: iconColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.transparent,
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.transparent,
        ),
      ],
      backgroundColor: iconColor,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: iconColor,
    );
  }
}
