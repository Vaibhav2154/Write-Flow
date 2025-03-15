# Blog App Project

## Overview
This project is a blog application built with Flutter, implementing Clean Architecture principles to ensure a scalable, maintainable, and testable codebase.

## Clean Architecture Implementation

### Layers

Our project follows a 3-layer architecture:

1. **Presentation Layer**
    - UI components (widgets, screens)
    - State management (BLoC/Cubit)
    - Navigation

2. **Domain Layer**
    - Business logic
    - Entities (core business objects)
    - Use cases (application-specific business rules)
    - Repository interfaces (abstract definitions)

3. **Data Layer**
    - Repository implementations
    - Data sources (remote, local)
    - DTOs (Data Transfer Objects)
    - Service implementations

### Dependency Flow

```
Presentation → Domain ← Data
```

Dependencies point inward, with the Domain layer at the center having no dependencies on outer layers.

## Project Structure

```
lib/
├── core/
│   ├── errors/
│   ├── network/
│   └── utils/
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   ├── blogs/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── profile/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── injection_container.dart
```

## Dependency Injection

We use GetIt for dependency injection to:
- Decouple object creation from usage
- Manage singletons and factories
- Enable easier testing with mocks

## Data Flow Example

For the blog feature:

1. **User Action**: User taps "Get Latest Blogs" button in UI
2. **Presentation Layer**: BlogsBloc receives FetchBlogsEvent
3. **Domain Layer**: GetBlogsUseCase is called by the Bloc
4. **Data Layer**: BlogsRepository implementation fetches from API/DB
5. **Return Path**: Data flows back through the layers, with appropriate transformations at each boundary

## Testing Strategy

- **Unit Tests**: For use cases, repositories, and BLoC/Cubit classes
- **Widget Tests**: For UI components in isolation
- **Integration Tests**: For feature flows

## Key Benefits of Clean Architecture

- **Separation of Concerns**: Each layer has a specific responsibility
- **Testability**: Dependencies are abstracted through interfaces
- **Scalability**: New features can be added with minimal changes to existing code
- **Maintainability**: Changes in external dependencies (UI, database, etc.) don't affect business logic

## Tech Stack

- Flutter for cross-platform UI
- Bloc/Cubit for state management
- Dio for network requests
- Hive or Shared Preferences for local storage
- GetIt for dependency injection
- Firebase for backend services (optional)