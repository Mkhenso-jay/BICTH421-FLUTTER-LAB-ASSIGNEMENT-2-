import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';

class OpportunityDetailPage extends StatelessWidget {
  final Map<String, String> opportunity;

  const OpportunityDetailPage({
    super.key,
    required this.opportunity,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    final isFav = provider.isFavorite(opportunity);

    return Scaffold(
      appBar: AppBar(
        title: Text(opportunity["title"] ?? "Opportunity"),
        actions: [
          IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : null,
            ),
            onPressed: () {
              if (isFav) {
                provider.removeFavorite(opportunity);
              } else {
                provider.addFavorite(opportunity);
              }
            },
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset(
              opportunity["image"] ?? "",
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                opportunity["title"] ?? "",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                opportunity["subtitle"] ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Getting Started",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("• Create an account"),
                    Text("• Learn the platform"),
                    Text("• Start small"),
                    Text("• Grow step by step"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}