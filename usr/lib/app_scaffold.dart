import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mind & Momentum', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        actions: isMobile
            ? null
            : [
                _NavBarItem(title: 'Home', route: '/'),
                _NavBarItem(title: 'Mental Health', route: '/mental_health'),
                _NavBarItem(title: 'Study & Focus', route: '/study_focus'),
                _NavBarItem(title: 'Lifestyle', route: '/lifestyle'),
                _NavBarItem(title: 'Games', route: '/games'),
                _NavBarItem(title: 'Quizzes', route: '/quizzes'),
                _NavBarItem(title: 'Tracker', route: '/tracker'),
                _NavBarItem(title: 'Resources', route: '/resources'),
                const SizedBox(width: 16),
              ],
      ),
      drawer: isMobile ? const _AppDrawer() : null,
      body: child,
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final String route;

  const _NavBarItem({required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }
}

class _AppDrawer extends StatelessWidget {
  const _AppDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Mind & Momentum',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Your mental wellness companion',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          _DrawerItem(title: 'Home', icon: Icons.home, route: '/'),
          _DrawerItem(title: 'Mental Health', icon: Icons.psychology, route: '/mental_health'),
          _DrawerItem(title: 'Study & Focus', icon: Icons.menu_book, route: '/study_focus'),
          _DrawerItem(title: 'Healthy Lifestyle', icon: Icons.favorite, route: '/lifestyle'),
          _DrawerItem(title: 'Games & Challenges', icon: Icons.videogame_asset, route: '/games'),
          _DrawerItem(title: 'Psychology Quizzes', icon: Icons.quiz, route: '/quizzes'),
          _DrawerItem(title: 'Progress Tracker', icon: Icons.track_changes, route: '/tracker'),
          _DrawerItem(title: 'Resources', icon: Icons.library_books, route: '/resources'),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const _DrawerItem({required this.title, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Close drawer
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}
