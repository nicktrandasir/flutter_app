import 'package:flutter/material.dart';


Widget bottomBar( {required int selectedIndex, required Function onItemTapped}) {


  return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.purple, size: 24),
      selectedItemColor: Colors.purple,
      unselectedIconTheme:  const IconThemeData(
        color: Colors.deepOrangeAccent,
      ),
      unselectedItemColor: Colors.deepOrangeAccent,
      currentIndex:  selectedIndex, //New
      onTap: (int selectedIndex) => onItemTapped(selectedIndex),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Main',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),

      ],
    );
  }


