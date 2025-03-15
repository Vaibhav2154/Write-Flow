# blog_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
## About Blog App

Blog App is a Flutter application designed to create, read, update, and delete blog posts. It demonstrates modern mobile app development practices including state management, API integration, and responsive UI design.

### Features

- User authentication (login/signup)
- Create and publish blog posts
- Browse posts with infinite scrolling
- Comment on blog posts
- Bookmark favorite articles
- Dark/light theme support
- Offline capabilities

## Project Structure

The project follows a clean architecture approach:

```
lib/
├── core/
│   ├── constants/
│   ├── services/
│   └── utils/
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── domain/
│   ├── entities/
│   └── usecases/
├── presentation/
│   ├── pages/
│   ├── widgets/
│   ├── blocs/
│   └── providers/
└── main.dart
```

## Dependencies

- `flutter_bloc` - State management
- `dio` - API requests
- `hive` - Local storage
- `get_it` - Dependency injection
- `flutter_markdown` - Markdown rendering
For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
