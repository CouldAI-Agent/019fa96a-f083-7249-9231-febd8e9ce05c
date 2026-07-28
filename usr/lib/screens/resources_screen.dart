import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Resources & Support',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Find helpful articles, motivational guides, and emergency support information if you need someone to talk to.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildResourceCard(context, 'Motivational Articles', 'Read stories to boost your drive.'),
            _buildResourceCard(context, 'Self-Improvement Guides', 'Step-by-step guides to better habits.'),
            _buildResourceCard(context, 'Emergency Support', 'Important hotlines and professional help contacts.', isUrgent: true),
          ],
        ),
      ),
    );
  }

  Widget _buildResourceCard(BuildContext context, String title, String description, {bool isUrgent = false}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: isUrgent ? Colors.red.shade50 : null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(
          isUrgent ? Icons.support_agent : Icons.article,
          size: 32,
          color: isUrgent ? Colors.red : Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isUrgent ? Colors.red.shade900 : null,
          ),
        ),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: isUrgent ? Colors.red : Colors.grey),
        onTap: () {},
      ),
    );
  }
}
