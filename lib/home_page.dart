import 'package:flutter/material.dart';
import 'package:meuprimeiroprojeto/app_controller.dart';

class HomePage extends StatefulWidget {
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
      drawer: Drawer(
        child: Column(
          children: [
            const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.hpJkZoIhk0SO08T6H5-HbAAAAA?rs=1&pid=ImgDetMain'
                    ),
                    radius: 40,
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tiago Silva',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'suporte2@visualset.com.br',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Logout'),
              subtitle: const Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Tiago Silva'),
        actions: const [
          CustomSwitch(),
        ],
        backgroundColor: AppController.instance.isDartTheme
                ? Colors.black // Cor de fundo para o AppBar em tema escuro
                : Colors.red, // Cor de fundo para o AppBar em tema claro
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('Contador: $counter'),
            const SizedBox(height: 10),
            const CustomSwitch(),
            const SizedBox(height: 20),
            const CustomSwitch(),
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
