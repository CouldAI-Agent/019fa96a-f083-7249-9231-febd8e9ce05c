import 'package:flutter/material.dart';

class QuizzesScreen extends StatelessWidget {
  const QuizzesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Psychology Quizzes',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Learn more about yourself! Take these short quizzes to discover your strengths and areas for growth.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildQuizItem(context, 'How well do you manage stress?'),
            _buildQuizItem(context, 'What is your study personality?'),
            _buildQuizItem(context, 'How healthy are your daily habits?'),
            _buildQuizItem(context, 'How strong is your focus level?'),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizItem(BuildContext context, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          child: Icon(Icons.quiz, color: Theme.of(context).colorScheme.secondary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text('Start'),
        ),
      ),
    );
  }
}
