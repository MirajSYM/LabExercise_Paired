// Mobile Application Programming (SCSJ3623)
// Semester 2, 2019/2020

// Exercise 1: Basic State Management with Stateful Widgets

// Write your name and your partner's.
// Only one submission is required per pair
// Submit only the source code file (main.dart)

//! Name 1:  Miraj Ahmed
//! Name 2:  Noverio Ainurohim

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'MAP Exercise 1',
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 150.0),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Small'),
            icon: Icon(Icons.photo_size_select_small),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Medium'),
            icon: Icon(Icons.photo_size_select_actual),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Large'),
            icon: Icon(Icons.photo_size_select_large),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Logo size : 0.0'),
                SizedBox(width: 8),
                Text('Rotation : 0.0'),
              ],
            ),
            slider(
              150.0,
              (value) {},
              300.0,
            ),
            slider(
              0.0,
              (value) {},
              360.0,
            ),
          ],
        ),
      ),
    );
  }
}

Slider slider(value, function, max) {
  return Slider(
    min: 0.0,
    max: max,
    value: value,
    onChanged: function,
  );
}
