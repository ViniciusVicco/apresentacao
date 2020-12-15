import 'package:apresentacao/views/components/custom_container.dart';
import 'package:flutter/material.dart';


class CustomDrawerState extends StatelessWidget {
  @override
  final int page;
  final Function(int) callBack;

  CustomDrawerState({this.page,this.callBack});

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(accountEmail: Text("Usuário") , accountName: Text("Bem vindo!"), currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('https://e-tinet.com/wp-content/uploads/2020/02/adicionar-usuario-no-linux.jpg'),
          ),
            arrowColor: Colors.yellow,
          ),
//          Container(
//            color: Colors.grey[200],
//              child: Text("Páginas"),
//          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.person),
              selected: page == 0,
              title: Text("Fazer Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(0);
                Navigator.pop(context);
              },
            ),
          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.search),
              selected: page == 1,
              title: Text("Consultoria", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(1);
                Navigator.pop(context);
              },
            ),
          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.laptop_chromebook),
              selected: page == 2,
              title: Text("Domina o Assunto ?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(2);
                Navigator.pop(context);
              },
            ),
          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.book),
              selected: page == 3,
              title: Text("Quero Aprender", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(3);
                Navigator.pop(context);
              },
            ),
          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.map),
              selected: page == 4,
              title: Text("Assistência Técnica", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(4);
                Navigator.pop(context);
              },
            ),
          ),
          CustomContainer(
            cor2: Colors.blue[200],
            cor1: Colors.blue[700],
            child: ListTile(
              trailing: Icon(Icons.help_outline),
              selected: page == 5,
              title: Text("Dúvidas Frequentes", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              onTap: () {
                callBack(5);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );

  }
}
