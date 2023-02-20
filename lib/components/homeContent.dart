import 'package:flutter/material.dart';

Widget myColumn({count = int}) {
  return   Column(
    children: [
      const Padding(padding: EdgeInsets.only(top: 10.0)),
      const Text('Ivan Pupkin',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'BeerMoney')),
      const Padding(padding: EdgeInsets.only(top: 10.0)),
      const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/1565284946_red4.jpg',
        ),
        radius: 50,
      ),
      const Padding(padding: EdgeInsets.only(top: 10.0)),
      Row(
        children: const [
          Icon(Icons.mail, size: 24, color: Colors.white,),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Text('i.pupkin@gmail.com', style: TextStyle(
              color: Colors.white
          ),)
        ],
      ),
      const Padding(padding: EdgeInsets.only(top: 10.0)),

      Row(
        children: [
          const Text('Likes:',  style: TextStyle(
              color: Colors.white
          ),),
          const Icon(Icons.heart_broken, size: 24, color: Colors.white,),
          Text('$count',  style: const TextStyle(
              color: Colors.white
          ),)
        ],
      )

    ],
  );
}