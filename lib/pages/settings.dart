import 'package:flutter/material.dart';
import '../components/appBar.dart';
import '../components/homeContent.dart';
import '../components/myBottomBar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          myColumn(
              count: _count
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add, color: Colors.deepOrangeAccent,),
      ),
    );
  }
}
