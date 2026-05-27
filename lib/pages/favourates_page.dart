import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);

    if (provider.favorites.isEmpty) {
      return const Center(
        child: Text("No favorites yet ❤️"),
      );
    }

    return ListView.builder(
      itemCount: provider.favorites.length,
      itemBuilder: (context, index) {
        final item = provider.favorites[index];

        return Card(
          child: ListTile(
            title: Text(item["title"]!),
            subtitle: Text(item["subtitle"]!),

            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                provider.removeFavorite(item);
              },
            ),
          ),
        );
      },
    );
  }
}