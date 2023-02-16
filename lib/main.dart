import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true
        ),
        body: Center(
          child: Text('Нелли 💕',  style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontFamily: 'BeerMoney'
          ),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('♥'),
          onPressed: () => print('!'),
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
