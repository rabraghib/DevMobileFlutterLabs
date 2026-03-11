import 'package:flutter/material.dart';

class Ex02Screen extends StatelessWidget {
  const Ex02Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 2 Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bienvenue à Flutter',
            style: const TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Image.asset('assets/flutter.png'),
          ElevatedButton(
            onPressed: () {
              print('Bouton cliqué !');
            },
            child: Text('Appuyez ici'),
          )
        ],
      ),
    );
  }
}
