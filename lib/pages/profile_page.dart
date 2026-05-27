import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Profile avatar
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Text(
                  "JR",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Jay Ross",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              const Text("jayross@gmail.com"),
              const SizedBox(height: 4),

              const Text("+27 81 234 5678"),

              const SizedBox(height: 30),

              // Info Cards
              _infoCard(Icons.work, "Opportunities Viewed", "12"),
              _infoCard(Icons.favorite, "Favorites", "3"),
              _infoCard(Icons.post_add, "Posts", "5"),

              const Spacer(),

              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                label: const Text("Edit Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard(IconData icon, String title, String value) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}