import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;
  final ValueChanged<Color> onChangeSeedColor;

  const SettingsPage({
    super.key,
    required this.themeMode,
    required this.onToggleTheme,
    required this.onChangeSeedColor,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notifications = true;
  bool privacyMode = false;

  final List<Color> colors = [
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 10),

          const Text(
            "Settings",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // Theme
          SwitchListTile(
            title: const Text("Dark Mode"),
            value: widget.themeMode == ThemeMode.dark,
            onChanged: (_) => widget.onToggleTheme(),
          ),

          const Divider(),

          // Notifications
          SwitchListTile(
            title: const Text("Notifications"),
            value: notifications,
            onChanged: (val) {
              setState(() => notifications = val);
            },
          ),

          // Privacy
          SwitchListTile(
            title: const Text("Privacy Mode"),
            value: privacyMode,
            onChanged: (val) {
              setState(() => privacyMode = val);
            },
          ),

          const Divider(),

          // Theme Colors
          const Text(
            "Theme Colors",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Wrap(
            spacing: 10,
            children: colors.map((color) {
              return GestureDetector(
                onTap: () => widget.onChangeSeedColor(color),
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 18,
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 30),

          // About section
          const Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text("About App"),
              subtitle: Text("Side Hustle Finder v1.0"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.security),
              title: Text("Privacy Policy"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.support),
              title: Text("Support"),
            ),
          ),
        ],
      ),
    );
  }
}