import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Container(
            child: Center(
          child: Column(children: <Widget>[
            Image.asset(
              'images/poto.jpg',
              width: 250,
              height: 250,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Nama",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              child: Text(
                "Hafiz Mandala Arummi",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Link",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              child: Text(
                "https://www.dicoding.com/users/hamaar",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
          ]),
        )));
  }
}
