
import 'package:flutter/material.dart';
import 'package:meuprimeiroprojeto/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            
            UserAccountsDrawerHeader(
              accountName: Text:('Tiago Silva'), 
              accountEmail: Text:('suporte2@visualset.com.br'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: (){
               Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Tiago Silva'),
        actions: [
          CustomSwitch(),
        ],
        backgroundColor: AppController.instance.isDartTheme
                ? Colors.black // Cor de fundo para o AppBar em tema escuro
                : Colors.red, // Cor de fundo para o AppBar em tema claro
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contador: $counter'),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
          },),
    );
  }
}

class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme, 
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}