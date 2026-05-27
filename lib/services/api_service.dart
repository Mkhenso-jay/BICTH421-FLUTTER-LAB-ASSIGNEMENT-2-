import 'dart:async';

class ApiService {
  // =========================
  // SIMULATE NETWORK DELAY
  // =========================
  Future<void> _delay() async {
    await Future.delayed(const Duration(milliseconds: 800));
  }

  // =========================
  // GET CATEGORIES
  // =========================
  Future<List<Map<String, String>>> getCategories() async {
    await _delay();

    return [
      {
        "image": "assets/images/freelance.png",
        "name": "Freelancing",
        "count": "12 opportunities",
        "topLabel": "HOT",
        "sideLabel": "TRENDING",
      },
      {
        "image": "assets/images/reselling.png",
        "name": "Reselling",
        "count": "8 opportunities",
        "topLabel": "NEW",
        "sideLabel": "POPULAR",
      },
      {
        "image": "assets/images/delivery.png",
        "name": "Delivery Services",
        "count": "5 opportunities",
        "topLabel": "EASY",
        "sideLabel": "START NOW",
      },
    ];
  }

  // =========================
  // GET OPPORTUNITIES
  // =========================
  Future<List<Map<String, String>>> getOpportunities() async {
    await _delay();

    return [
      {
        "image": "assets/images/marketplace.png",
        "title": "Facebook Marketplace",
        "subtitle": "A simple place to start selling products locally.",
      },
      {
        "image": "assets/images/business.png",
        "title": "WhatsApp Business",
        "subtitle": "Start selling through your contacts and groups.",
      },
    ];
  }

  // =========================
  // GET POSTS
  // =========================
  Future<List<Map<String, String>>> getPosts() async {
    await _delay();

    return [
      {
        "user": "Vincent",
        "comment":
            "I started a small online business and it has been successful from day one.",
        "time": "2h ago",
      },
      {
        "user": "Jay Ross",
        "comment":
            "I started selling snacks on campus and made my first profit this week.",
        "time": "2s ago",
      },
      {
        "user": "Brilliant",
        "comment": "I finally got my first freelancing client online.",
        "time": "3d ago",
      },
    ];
  }
}