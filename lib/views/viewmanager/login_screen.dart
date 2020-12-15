import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Stack(
    children: [
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
          )
        ),
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Faça Login", style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email:",style: TextStyle(color: Colors.white),),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[100]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: InputBorder.none,

                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Senha:",style: TextStyle(color: Colors.white),),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue[50]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(

                    color: Colors.blueAccent,
                    onPressed: (){

                    },
                    child: Text("Fazer Login", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: RaisedButton(


                    color: Colors.blue[900].withOpacity(0.75),
                    onPressed: (){

                    },
                    child: Image(
                      width: double.infinity,
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Facebook_New_Logo_%282015%29.svg/1024px-Facebook_New_Logo_%282015%29.svg.png"),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  ),
    );
  }
}
