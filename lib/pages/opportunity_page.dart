import 'package:flutter/material.dart';
import '../widgets/opportunity_card.dart';

class OpportunityPage extends StatelessWidget {
  const OpportunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
  children: const [
    OpportunityCard(
      imagePath: 'assets/images/marketplace.png',
      title: 'Facebook Marketplace',
      subtitle: 'A simple place to start selling products locally.',
    ),

    OpportunityCard(imagePath: 'assets/images/bussiness.png',
     title: 'WhatsApp Business',
      subtitle: 'Start selling through your contacts and groups.')
  ],
);
  }
}