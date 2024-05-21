import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          'Bem vindo !',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => 
       showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Item foi adicionado'),
            content: const Text('Sucesso ! Item adicionado com sucesso.'),
            actions: <Widget>[
              TextButton(onPressed: () {
              Navigator.of(context).pop();
              }
              , child: const Text('OK'),
              )
            ]
          );
        }
       )
      ),
    );
  }
}
