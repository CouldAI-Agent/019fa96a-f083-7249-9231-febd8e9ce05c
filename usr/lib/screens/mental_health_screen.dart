import 'package:flutter/material.dart';

class MentalHealthScreen extends StatelessWidget {
  const MentalHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mental Health & Emotions',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'It is normal to feel stressed, angry, or overwhelmed. Here you can learn how to understand your feelings and handle them in healthy ways.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildTopicCard(
              context,
              'Understanding Anger',
              'Why do we get angry? Learn the triggers and how to pause before reacting.',
              Icons.warning_amber_rounded,
            ),
            const SizedBox(height: 16),
            _buildTopicCard(
              context,
              'Stress Relief Techniques',
              'Simple breathing exercises and mindfulness tips to calm your mind instantly.',
              Icons.self_improvement,
            ),
            const SizedBox(height: 16),
            _buildTopicCard(
              context,
              'Emotional Intelligence',
              'How to recognize your emotions and communicate them clearly to others.',
              Icons.psychology,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopicCard(BuildContext context, String title, String description, IconData icon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              child: Icon(icon, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
