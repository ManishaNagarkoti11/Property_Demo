import 'package:flutter/material.dart';
class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(

        selectedLabelStyle:TextStyle(fontSize: 16,letterSpacing: 1.5) ,
        unselectedLabelStyle:TextStyle(fontSize: 16,letterSpacing: 1.5),
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.red,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
      label: 'Property',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: 'Profile',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.message_outlined),
      label: 'Message',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      label: 'Setting',
      )
      ],
      ),
    );
  }
}
