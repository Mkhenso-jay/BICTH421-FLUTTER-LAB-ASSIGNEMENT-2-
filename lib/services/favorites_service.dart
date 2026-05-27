class FavoritesService {
  static final List<Map<String, String>> _favorites = [];

  static List<Map<String, String>> get favorites => _favorites;

  static void add(Map<String, String> item) {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
    }
  }

  static void remove(Map<String, String> item) {
    _favorites.remove(item);
  }

  static bool isFavorite(Map<String, String> item) {
    return _favorites.contains(item);
  }
}