import 'package:flutter/material.dart';


class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Main page. A few block with routing and info')
        ]),
      ),
    );
  }
}
