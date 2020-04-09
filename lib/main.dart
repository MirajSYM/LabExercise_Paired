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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => homeState_widget();

  _HomeState homeState_widget() => _HomeState();
}

class _HomeState extends State<Home> {
  double _size = 150.0;
  double _angle = 0.0;
  get size => _size;
  get angle => _angle;
  set size(value) => setState(() {
        _size = value;
      });
  set angle(value) => setState(() {
        _angle = value;
      });
  @override
  Widget build(BuildContext context) {
    var scaffold2 = buildScaffold();
    var scaffold = scaffold2;
    return scaffold;
  }

  Scaffold buildScaffold() {
    return Scaffold(
      body: Center(
        child: Transform.rotate(angle: _angle, child: FlutterLogo(size: _size)),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
            left:
                22.0), //Padding is set to left to align the children in center
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button(
              'Small',
              Icon(Icons.photo_size_select_small),
              () {
                size = 50.0;
              },
            ),
            button(
              'Medium',
              Icon(Icons.image),
              () {
                size = 150.0;
              },
            ),
            button(
              'Large',
              Icon(Icons.photo_size_select_large),
              () {
                size = 300.0;
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Logo size : ${_size.toStringAsFixed(0)}'),
                SizedBox(width: 8),
                Text('Rotation : ${_angle.toStringAsFixed(0)} degree'),
              ],
            ),
            slider(
              _size,
              (value) {
                size = value;
              },
              300.0,
            ),
            slider(
              _angle,
              (value) {
                angle = value;
              },
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

FloatingActionButton button(btnName, icon, function) {
  return FloatingActionButton.extended(
    onPressed: function,
    label: Text(btnName),
    icon: icon,
  );
}
