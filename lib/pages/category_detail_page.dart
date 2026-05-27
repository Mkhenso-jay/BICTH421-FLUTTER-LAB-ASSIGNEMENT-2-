import 'package:flutter/material.dart';

class CategoryDetailPage extends StatelessWidget {
  const CategoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(category['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(category['image']),
            const SizedBox(height: 16),
            Text(
              category['name'],
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(category['count']),
          ],
        ),
      ),
    );
  }
}