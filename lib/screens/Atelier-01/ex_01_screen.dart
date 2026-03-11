import 'package:flutter/material.dart';

class Ex01Screen extends StatelessWidget {
  const Ex01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma première application flutter'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        const Expanded(
          child: Center(
            child: Text(
              'Hello Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Clique ici'),
          ),
        ),
      ]),
    );
  }
}
