import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get favorites => _favorites;

  bool isFavorite(Map<String, String> item) {
    return _favorites.any((e) => e["title"] == item["title"]);
  }

  void addFavorite(Map<String, String> item) {
    if (!isFavorite(item)) {
      _favorites.add(item);
      notifyListeners();
    }
  }

  void removeFavorite(Map<String, String> item) {
    _favorites.removeWhere((e) => e["title"] == item["title"]);
    notifyListeners();
  }
}