import 'package:flutter/material.dart';

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progress Tracker',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Keep track of your daily habits. Small changes every day lead to big results over time.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildTrackerItem(context, 'Daily Mood', 'How are you feeling today?', Icons.mood),
            _buildTrackerItem(context, 'Study Hours', 'Time spent focusing.', Icons.menu_book),
            _buildTrackerItem(context, 'Water Intake', 'Glasses of water drank.', Icons.water_drop),
            _buildTrackerItem(context, 'Sleep Schedule', 'Hours of sleep last night.', Icons.bedtime),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackerItem(BuildContext context, String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.add_circle_outline, size: 32),
        onTap: () {},
      ),
    );
  }
}
