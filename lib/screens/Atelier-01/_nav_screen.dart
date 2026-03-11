import 'package:flutter/material.dart';

import 'ex_01_screen.dart';
import 'ex_02_screen.dart';
import 'ex_03_screen.dart';
import 'ex_04_screen.dart';
import 'ex_05_screen.dart';
import 'mini_quiz_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atelier 01 - Menu Principal')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildButton(context, 'Exercice 1', const Ex01Screen()),
          const SizedBox(height: 16),
          _buildButton(context, 'Exercice 2', const Ex02Screen()),
          const SizedBox(height: 16),
          _buildButton(context, 'Exercice 3', const Ex03Screen()),
          const SizedBox(height: 16),
          _buildButton(context, 'Exercice 4', const Ex04Screen()),
          const SizedBox(height: 16),
          _buildButton(context, 'Exercice 5', const Ex05Screen()),
          const SizedBox(height: 16),
          _buildButton(context, 'A Rendre: Mini Quiz', const MiniQuizScreen()),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(title),
    );
  }
}
