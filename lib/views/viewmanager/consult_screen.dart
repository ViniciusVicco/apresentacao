import 'package:flutter/material.dart';

class ConsultScreen extends StatefulWidget {
  @override
  _ConsultScreenState createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {
  double _currentSliderValue = 2500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue[100],
            ],
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
          Column(
          children: [
          SizedBox(
          height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text("Selecione o seu investimento",
              style: TextStyle(color: Colors.white),),
          ),
          Slider(
            activeColor: Colors.white,
            value: _currentSliderValue,
            min: 1000,
            max: 25000,
            divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/loginScreen');
              },
              color: Colors.blueAccent,
            child: Text("Iniciar Consultoria para R\$ ${_currentSliderValue.toString()}", style: TextStyle(color: Colors.white),),
            )
          ],
          )
          ],
        ),),
      )
    ,

    );
  }
}
