import 'package:flutter/material.dart';
import 'app_scaffold.dart';
import 'app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/mental_health_screen.dart';
import 'screens/study_focus_screen.dart';
import 'screens/lifestyle_screen.dart';
import 'screens/games_screen.dart';
import 'screens/quizzes_screen.dart';
import 'screens/tracker_screen.dart';
import 'screens/resources_screen.dart';

void main() {
  runApp(const TeenWellnessApp());
}

class TeenWellnessApp extends StatelessWidget {
  const TeenWellnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind & Momentum',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const AppScaffold(child: HomeScreen()),
        '/mental_health': (context) => const AppScaffold(child: MentalHealthScreen()),
        '/study_focus': (context) => const AppScaffold(child: StudyFocusScreen()),
        '/lifestyle': (context) => const AppScaffold(child: LifestyleScreen()),
        '/games': (context) => const AppScaffold(child: GamesScreen()),
        '/quizzes': (context) => const AppScaffold(child: QuizzesScreen()),
        '/tracker': (context) => const AppScaffold(child: TrackerScreen()),
        '/resources': (context) => const AppScaffold(child: ResourcesScreen()),
      },
    );
  }
}
