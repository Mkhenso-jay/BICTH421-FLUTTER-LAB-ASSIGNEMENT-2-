import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'providers/app_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: const SideHustleFinderApp(),
    ),
  );
}

class SideHustleFinderApp extends StatefulWidget {
  const SideHustleFinderApp({super.key});

  @override
  State<SideHustleFinderApp> createState() => _SideHustleFinderAppState();
}

class _SideHustleFinderAppState extends State<SideHustleFinderApp> {
  ThemeMode _themeMode = ThemeMode.light;
  Color _seedColor = Colors.teal;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _changeSeedColor(Color color) {
    setState(() {
      _seedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Side Hustle Finder',

      themeMode: _themeMode,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _seedColor,
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _seedColor,
        brightness: Brightness.dark,
      ),

      home: HomePage(
        themeMode: _themeMode,
        seedColor: _seedColor,
        onToggleTheme: _toggleTheme,
        onChangeSeedColor: _changeSeedColor,
      ),
    );
  }
}