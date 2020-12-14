import 'package:apresentacao/views/components/custom_drawer_widget.dart';
import 'package:apresentacao/views/viewmanager/login_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call_missed_outgoing),
          )
        ],
        title: Text("My Consultor"),
      ),
      backgroundColor: Colors.white,
      drawer: CustomDrawerState(
        page: page,
        callBack: (int value){
      setState(() {
        page = value;
      });
      },
      ),
      body: IndexedStack(
        index: page,
        children: [
            LoginScreen(),
          Container(
              color: Colors.blueAccent,
          ),
          Container(
              color: Colors.green,

          ),
          Container(
              color: Colors.yellow,
          ),
          Container(
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
