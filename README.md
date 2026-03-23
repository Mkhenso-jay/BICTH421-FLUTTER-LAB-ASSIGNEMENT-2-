# Side Hustle Finder (Flutter App)

## Overview
This project is a lab assignment developed using Flutter for **BICTH421 – Advanced Programming Techniques (Mobile Development)**.

The application, *Side Hustle Finder*, was created to demonstrate the use of Flutter widgets, Material 3 theming, structured app layout, reusable custom cards, and simple state management in a mobile application.

---

## Aim of the Assignment
The main aim of this assignment was to:

- build a small Flutter application using Material 3  
- apply the `Scaffold` layout structure  
- implement a `NavigationBar` with tab switching using `IndexedStack`  
- create reusable custom widgets  
- demonstrate understanding of Flutter widgets, state, and UI composition  

---

## Application Idea
The application presents different side hustle opportunities in a simple and user-friendly interface. It includes three main sections:

- **Category** – displays hustle categories  
- **Post** – displays short opportunity-related posts  
- **Opportunities** – displays opportunity cards with a favorite toggle  

---

## Features
- Material 3 theming  
- Light and dark theme support  
- Color theme switching  
- Bottom `NavigationBar`  
- `IndexedStack` for preserving tab state  
- Reusable custom widgets:
  - `CategoryCard`
  - `PostCard`
  - `OpportunityCard`
- Favorite toggle using `StatefulWidget` and `setState()`  

---

## Technologies Used
- Flutter  
- Dart  
- Material 3  

---

## Implementation
The application was developed using:

- `Scaffold` for the main layout  
- `AppBar` for the top section  
- `NavigationBar` for switching between tabs  
- `IndexedStack` to preserve tab content state  
- `Stack`, `Positioned`, and `RotatedBox` in `CategoryCard`  
- `Row`, `Column`, and `Expanded` in `PostCard`  
- `ClipRRect`, `AspectRatio`, and `ListTile` in `OpportunityCard`  

---

## Learning Outcomes
This assignment helped demonstrate:

- understanding of Flutter widgets and widget composition  
- use of reusable custom components  
- implementation of structured UI layout  
- use of simple state management with `setState()`  
- application of Flutter design principles in a practical project  

---

## Conclusion
This assignment demonstrates the ability to build a structured and interactive Flutter application using Flutter widgets and modern UI practices. It shows practical understanding of theming, layout, reusable widgets, and stateful interaction in mobile development.
