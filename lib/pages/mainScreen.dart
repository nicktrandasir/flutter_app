import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Main page')
        ]),
      ),
    );
  }
}
