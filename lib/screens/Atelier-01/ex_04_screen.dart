import 'package:flutter/material.dart';

class Ex04Screen extends StatefulWidget {
  const Ex04Screen({super.key});

  @override
  State<Ex04Screen> createState() => _Ex04ScreenState();
}

class _Ex04ScreenState extends State<Ex04Screen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 4 Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre de clics: $_counter',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Cliquer ici'),
            ),
          ],
        ),
      ),
    );
  }
}
