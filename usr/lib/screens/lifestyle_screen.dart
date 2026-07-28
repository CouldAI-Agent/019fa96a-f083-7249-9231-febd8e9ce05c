import 'package:flutter/material.dart';

class LifestyleScreen extends StatelessWidget {
  const LifestyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Healthy Lifestyle',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Your physical health directly impacts your mental health. Learn about diet, sleep, and exercise to feel your best.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildLifestyleGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLifestyleGrid(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: isMobile ? 1 : 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: isMobile ? 2.5 : 1.5,
      children: [
        _buildGridCard(context, 'Balanced Diet', 'Eat brain-boosting foods and stay hydrated.', Icons.restaurant),
        _buildGridCard(context, 'Better Sleep', 'Why 8-10 hours is crucial for teenagers.', Icons.bedtime),
        _buildGridCard(context, 'Exercise Daily', 'Boost endorphins and reduce stress.', Icons.directions_run),
        _buildGridCard(context, 'Healthy Routine', 'Building morning and evening habits.', Icons.wb_sunny),
      ],
    );
  }

  Widget _buildGridCard(BuildContext context, String title, String subtitle, IconData icon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 4),
            Text(subtitle, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
