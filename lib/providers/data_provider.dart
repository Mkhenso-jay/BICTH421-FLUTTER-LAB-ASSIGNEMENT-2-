import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  final List<Map<String, String>> _categories = [
    {
      "image": "assets/images/freelance.png",
      "name": "Freelancing",
      "count": "12 opportunities",
    },
    {
      "image": "assets/images/reselling.png",
      "name": "Reselling",
      "count": "8 opportunities",
    },
    {
      "image": "assets/images/delivery.png",
      "name": "Delivery Services",
      "count": "5 opportunities",
    },
  ];

  final List<Map<String, String>> _opportunities = [
    {
      "image": "assets/images/marketplace.png",
      "title": "Facebook Marketplace",
      "subtitle": "Sell locally easily",
    },
    {
      "image": "assets/images/business.png",
      "title": "WhatsApp Business",
      "subtitle": "Sell through WhatsApp",
    },
  ];

  final List<Map<String, String>> _posts = [
    {
      "user": "Vincent",
      "comment": "Started business online successfully.",
      "time": "2h ago",
    },
  ];

  // =====================
  // FAVORITES (NEW)
  // =====================
  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get categories => _categories;
  List<Map<String, String>> get opportunities => _opportunities;
  List<Map<String, String>> get posts => _posts;
  List<Map<String, String>> get favorites => _favorites;

  void toggleFavorite(Map<String, String> item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
    } else {
      _favorites.add(item);
    }
    notifyListeners();
  }

  bool isFavorite(Map<String, String> item) {
    return _favorites.contains(item);
  }
}