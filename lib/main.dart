import 'package:apresentacao/views/signup_screen.dart';
import 'package:apresentacao/views/viewmanager/base_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings){
        switch(settings.name){
          case '/signin':
          default:
            return MaterialPageRoute(
              builder: (_) => SignUpScreen()
            );
        }
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
        cardColor: Colors.yellow,
        splashColor: Colors.orange[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: BaseScreen(),
    );
  }
}


