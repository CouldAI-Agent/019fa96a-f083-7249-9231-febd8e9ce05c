import 'package:flutter/material.dart';

class StudyFocusScreen extends StatelessWidget {
  const StudyFocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Study & Concentration',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Struggling to focus? Discover practical techniques to improve your memory, manage your time, and beat procrastination.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildTechniqueCard(
              context,
              'Pomodoro Technique',
              'Study for 25 minutes, then take a 5-minute break. It keeps your brain fresh!',
              Icons.timer,
            ),
            const SizedBox(height: 16),
            _buildTechniqueCard(
              context,
              'Time Management',
              'How to plan your day, prioritize tasks, and avoid cramming before exams.',
              Icons.calendar_today,
            ),
            const SizedBox(height: 16),
            _buildTechniqueCard(
              context,
              'Memory Hacks',
              'Use active recall and spaced repetition to remember things longer.',
              Icons.memory,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTechniqueCard(BuildContext context, String title, String description, IconData icon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(icon, size: 40, color: Theme.of(context).colorScheme.secondary),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(description),
        ),
      ),
    );
  }
}
