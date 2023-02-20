import 'package:flutter/material.dart';

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
      static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
      static const List<Widget> _widgetOptions = <Widget>[
            Text(
                  'Index 0: Main',
                  style: optionStyle,
            ),
            Text(
                  'Index 1: List',
                  style: optionStyle,
            ),
            Text(
                  'Index 2: Settings',
                  style: optionStyle,
            ),
      ];

      void _onItemTapped(int index) {
            setState(() {
                  _selectedIndex = index;
            });
      }

      @override/**/
      Widget build(BuildContext context) {
            return Scaffold(
                  appBar: myAppBar(),
                  body: Center(
                        child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                  bottomNavigationBar: bottomBar(
                        selectedIndex: _selectedIndex,
                      onItemTapped: (int index) {
                            _onItemTapped(index);
                      } ,
                  ),
            );
      }
}
