# Side Hustle Finder (Flutter App)

## Overview
This project is a Flutter mobile application developed for:

- BICTH421 – Advanced Programming Techniques (Mobile Development)
- Assignment 2 & Assignment 3

The application demonstrates Flutter UI development, Material 3 design, reusable widgets, navigation, state management, persistence, and interactive mobile application features.

The app was developed using Flutter and Dart and follows modern mobile development practices with a clean and responsive user interface.

---

# Aim of the Assignments

The purpose of these assignments was to:

- develop a functional Flutter mobile application
- implement Material 3 design principles
- create reusable custom widgets
- implement multi-page navigation
- apply state management techniques
- implement persistent data storage
- demonstrate responsive and interactive UI design
- apply Flutter widget composition and layout principles

---

# Application Idea

Side Hustle Finder is a mobile application that helps users discover side hustle opportunities and interact with opportunity-related content.

The application includes the following sections:

- Categories
- Posts
- Opportunities
- Favorites
- Profile
- Settings

Users can browse opportunities, create posts, search for opportunities, and save favorite hustles.

---

# Features

## Core Features
- Material 3 UI
- Responsive mobile design
- Light and dark theme support
- Theme color switching
- Navigation drawer
- Bottom NavigationBar
- IndexedStack tab preservation
- Reusable custom widgets

---

## Category Section
- Displays hustle categories
- Custom category cards
- Styled labels and badges
- Image-based UI cards

---

## Posts Section
- View community-style posts
- Add new posts dynamically
- Interactive text input
- Keyboard dismiss behavior when tapping outside input field

---

## Opportunities Section
- Opportunity cards with images
- Search functionality
- Favorite button functionality
- Favorite animation effects
- Opportunity details navigation

---

## Favorites Section
- Save favorite opportunities
- Remove opportunities from favorites
- Persistent favorites storage
- Favorites remain saved after app restart

---

## Settings Section
- Theme switching
- Multiple color theme options
- Modern settings layout

---

## Profile Section
- User profile UI
- Email and phone display
- Statistics cards
- About section

---

# Technologies Used

- Flutter
- Dart
- Material 3
- Provider (State Management)
- Shared Preferences (Persistence)

---

# State Management

The application uses:

- `setState()` for local widget updates
- `Provider` for shared application state
- `ChangeNotifier` for reactive UI updates

The `AppProvider` manages:
- favorite opportunities
- favorite persistence
- UI updates across screens

---

# Persistent Storage

The application implements persistent local storage using:

```dart
shared_preferences
