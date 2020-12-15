import 'package:flutter/material.dart';

class CustomStackBackGround extends StatelessWidget {
  final Widget child;
  CustomStackBackGround({this.child});
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
              Colors.blue[400],
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
