import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites ❤️"),
      ),
      body: Consumer<AppProvider>(
        builder: (context, provider, child) {
          final favorites = provider.favorites;

          if (favorites.isEmpty) {
            return const Center(
              child: Text(
                "No favorites yet ❤️\nGo to Opportunities and tap the heart",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final item = favorites[index];

              return Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: item["image"] != null
                      ? Image.asset(
                          item["image"]!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.image),

                  title: Text(
                    item["title"] ?? "No title",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  subtitle: Text(item["subtitle"] ?? "No description"),

                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      provider.removeFavorite(item);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}