import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    title: const Text('Flutter app', style: TextStyle(color: Colors.deepOrangeAccent),),
    centerTitle: true,
    backgroundColor: Colors.purple,
  );
}