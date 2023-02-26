import 'package:flutter/material.dart';
import 'package:flutter_app/pages/list.dart';
import 'package:flutter_app/pages/main.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/settings.dart';
import 'components/appBar.dart';
import 'components/myBottomBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final widgetOptions = [
        new Main(),
        new ListScreen(),
        new ProfileScreen(),
        new SettingsScreen()
  ];

  void onItemTapped(int index) {
        setState(() {
              _selectedIndex = index;
        });
  }

  @override /**/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: bottomBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
              onItemTapped(index);
        },
      ),
    );
  }
}
