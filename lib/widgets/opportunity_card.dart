import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';

class OpportunityCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OpportunityCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    final isFav = provider.isFavorite({
      "image": imagePath,
      "title": title,
      "subtitle": subtitle,
    });

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),

        title: Text(title),
        subtitle: Text(subtitle),

        trailing: IconButton(
          icon: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? Colors.red : Colors.grey,
          ),

          onPressed: () {
            final item = {
              "image": imagePath,
              "title": title,
              "subtitle": subtitle,
            };

            if (isFav) {
              provider.removeFavorite(item);
            } else {
              provider.addFavorite(item);
            }
          },
        ),
      ),
    );
  }
}