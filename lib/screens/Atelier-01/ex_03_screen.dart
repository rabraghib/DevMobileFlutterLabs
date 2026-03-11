import 'package:flutter/material.dart';

class Ex03Screen extends StatelessWidget {
  const Ex03Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 3 Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 32),
          const Text(
            'Choisis une couleur',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Vous avez choisi Rouge');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Rouge'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Vous avez choisi Vert');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Vert'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Vous avez choisi Bleu');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Bleu'),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(''),
        ],
      ),
    );
  }
}
