import 'package:flutter/material.dart';
import '../widgets/opportunity_card.dart';

class OpportunityPage extends StatefulWidget {
  const OpportunityPage({super.key});

  @override
  State<OpportunityPage> createState() => _OpportunityPageState();
}

class _OpportunityPageState extends State<OpportunityPage> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> allOpportunities = const [
    {
      "image": "assets/images/marketplace.png",
      "title": "Facebook Marketplace",
      "subtitle": "A simple place to start selling products locally.",
    },
    {
      "image": "assets/images/bussiness.png",
      "title": "WhatsApp Business",
      "subtitle": "Start selling through your contacts and groups.",
    },
    {
      "image": "assets/images/freelance.png",
      "title": "Freelancing",
      "subtitle": "Work online and earn money from global clients.",
    },
  ];

  String query = "";

  @override
  Widget build(BuildContext context) {
    final filtered = allOpportunities.where((item) {
      final title = item["title"]!.toLowerCase();
      return title.contains(query.toLowerCase());
    }).toList();

    return Column(
      children: [
        // ================= SEARCH BAR =================
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextField(
            controller: searchController,
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: const InputDecoration(
              hintText: "Search opportunities...",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),

        // ================= LIST =================
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: filtered
                .map((item) => OpportunityCard(
                      imagePath: item["image"]!,
                      title: item["title"]!,
                      subtitle: item["subtitle"]!,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}