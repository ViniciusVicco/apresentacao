import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  @required final Color cor1;
  @required final Color cor2;
  CustomContainer({this.child, this.cor1, this.cor2});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [cor1,cor2]
            )
        ),
      child: child,
      ),
    );
  }
}
