import 'package:flutter/material.dart';

class MiniQuizScreen extends StatefulWidget {
  const MiniQuizScreen({super.key});

  @override
  State<MiniQuizScreen> createState() => _MiniQuizScreenState();
}

class _MiniQuizScreenState extends State<MiniQuizScreen> {
  String _feedbackMessage = '';
  bool _isAnswerCorrect = false;

  final _correctAnswer = 'Rabat';
  final _options = ['Rabat', 'Casablanca', 'Marrakech'];

  void _checkAnswer(String answer) {
    setState(() {
      if (answer == _correctAnswer) {
        _feedbackMessage = 'Bonne réponse !';
        _isAnswerCorrect = true;
      } else {
        _feedbackMessage = 'Mauvaise réponse !';
        _isAnswerCorrect = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Quiz'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quelle est la capitale du Maroc ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 40),
            for (var option in _options) ...[
              ElevatedButton(
                onPressed: () => _checkAnswer(option),
                child: Text(option),
              ),
              const SizedBox(height: 16),
            ],
            const SizedBox(height: 40),
            Text(
              _feedbackMessage,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _isAnswerCorrect ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
