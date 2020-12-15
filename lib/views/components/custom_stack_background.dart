import 'package:flutter/material.dart';

class CustomStackBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue[100],
            ],
          ),
        ),
      ),
    ]));
  }
}

//body: Stack(
//children: [
//Container(
//width: double.infinity,
//height: double.infinity,
//decoration: BoxDecoration(
//gradient: LinearGradient(
//begin: Alignment.topCenter,
//end: Alignment.bottomCenter,
//colors: [
//Colors.blueAccent,
//Colors.blue[100],
//],
