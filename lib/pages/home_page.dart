import 'package:flutter/material.dart';
import ' category_page.dart';
import 'post_page.dart';
import 'opportunity_page.dart';

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
  int _selectedIndex = 0;

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Side Hustle Finder'),
        actions: [
          IconButton(
            onPressed: widget.onToggleTheme,
            icon: Icon(
              widget.themeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
          IconButton(
            onPressed: () => widget.onChangeSeedColor(Colors.teal),
            icon: const Icon(Icons.circle, color: Colors.teal),
          ),
          IconButton(
            onPressed: () => widget.onChangeSeedColor(Colors.blue),
            icon: const Icon(Icons.circle, color: Colors.blue),
          ),
          IconButton(
            onPressed: () => widget.onChangeSeedColor(Colors.orange),
            icon: const Icon(Icons.circle, color: Colors.orange),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [CategoryPage(), PostPage(), OpportunityPage()],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: 'Category',
          ),
          NavigationDestination(
            icon: Icon(Icons.forum_outlined),
            selectedIcon: Icon(Icons.forum),
            label: 'Post',
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            selectedIcon: Icon(Icons.work),
            label: 'Opportunities',
          ),
        ],
      ),
    );
  }
}
