import 'package:flutter/material.dart';


Widget bottomBar( {required int selectedIndex, required Function onItemTapped}) {


  return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.white, size: 24),
      selectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
        color: Colors.deepOrangeAccent,
      ),
      unselectedItemColor: Colors.deepOrangeAccent,
      backgroundColor: Colors.purple,
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
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],


    );
  }


