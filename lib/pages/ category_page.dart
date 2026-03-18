import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CategoryCard(
         imagePath: 'assets/images/freelance.png',
          categoryName: 'Freelancing',
          categoryCount: '12 opportunities',
          topLabel: 'HOT',
          sideLabel: 'TRENDING',
        ),

        CategoryCard(
          imagePath: 'assets/images/reselling.png',
           categoryName: 'Reselling', 
           categoryCount: '8 opportunities', 
           topLabel: 'NEW', 
           sideLabel: 'POPULAR',
           ),

           CategoryCard(imagePath: 'assets/images/delivery.png',
            categoryName: ' Delivery Services',
            categoryCount: '5 Opportunities',
            topLabel: 'EASY',
            sideLabel: 'START NOW'
            )
      ],


    );
  }
}