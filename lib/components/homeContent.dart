import 'package:flutter/material.dart';

Widget myColumn({count}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 370,
            /**/
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 10)),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/1565284946_red4.jpg',
                  ),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                Text('Ivan Pupkin',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'BeerMoney')),
              ],
            ),
          ) /**/
        ],
      ),
      const Padding(padding: EdgeInsets.only(top: 10.0)),
      Container(
        width: 120,
        height: 100,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 10)),
                Text(
                  'Likes: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(
                  count <= 0 ? Icons.heart_broken : Icons.favorite,
                  size: 40,
                  color: count <= 0 ? Colors.white : Colors.red,

                ),
                Text(
                  ' $count',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(bottom: 10)),
      Container(
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(

          children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 10)),
            Icon(
              Icons.mail,
              size: 24,
              color: Colors.white,
            ),
            Text(
              ' i.pupkin@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      )
    ],
  );
}
