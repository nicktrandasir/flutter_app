import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListState();
}

class _ListState extends State<ListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('List page. Add free api ')
        ]),
      ),
    );
  }
}
