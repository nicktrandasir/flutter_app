import 'package:flutter/material.dart';
import '../components/appBar.dart';
import '../components/homeContent.dart';
import '../components/myBottomBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text('PROFILE', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.center,

                  ),
                ),
                Center(
                  child:  myColumn(count: _count),
                )
               ]),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.deepOrangeAccent,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                setState(() {
                  _count--;
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.deepOrangeAccent,
              ),
            ),
             Padding(padding: EdgeInsets.fromLTRB(0, 0, 50, 0)),
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              child: Icon(
                Icons.restart_alt,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ],
        ));
  }
}
