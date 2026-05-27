import 'package:flutter/material.dart';

import 'category_page.dart';
import 'post_page.dart';
import 'opportunity_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import '../screens/favorites_screen.dart';

class HomePage extends StatefulWidget {
  final ThemeMode themeMode;
  final Color seedColor;
  final VoidCallback onToggleTheme;
  final ValueChanged<Color> onChangeSeedColor;

  const HomePage({
    super.key,
    required this.themeMode,
    required this.seedColor,
    required this.onToggleTheme,
    required this.onChangeSeedColor,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = const [
      CategoryPage(),
      PostPage(),
      OpportunityPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Side Hustle Finder"),
      ),

      // LEFT SIDE MENU FIXED
      drawer: Drawer(
        child: ListView(
          children: [

            const DrawerHeader(
              child: Text("Menu"),
            ),

            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favorites"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FavoritesScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ProfilePage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SettingsPage(
                      themeMode: widget.themeMode,
                      onToggleTheme: widget.onToggleTheme,
                      onChangeSeedColor: widget.onChangeSeedColor,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: IndexedStack(
        index: _index,
        children: pages,
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: "Categories",
          ),
          NavigationDestination(
            icon: Icon(Icons.forum_outlined),
            selectedIcon: Icon(Icons.forum),
            label: "Posts",
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            selectedIcon: Icon(Icons.work),
            label: "Opportunities",
          ),
        ],
      ),
    );
  }
}