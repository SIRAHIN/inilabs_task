# inilabs_task

## Overview

This project is a Flutter application that allows users to search for a GitHub user and view their repositories. The app displays repositories in both grid and list views with filtering and detail options.

---

## Flutter & SDK Version

This project uses **FVM** (Flutter Version Management) for SDK consistency across developers and CI.  
**Required FVM Flutter SDK Version:** `3.35.1`

> **How to use FVM:**
> 1. [Install FVM](https://fvm.app/docs/getting_started/installation) if you don’t have it installed.
> 2. Run `fvm install` in the project root to download the correct Flutter version.
> 3. Use FVM for running commands, e.g. `fvm flutter pub get`, `fvm flutter run`.

---

## Principles

- **Separation of Concerns**: Logic is separated into controllers, views, and models for maintainability.
- **Reactive Programming**: Uses the `GetX` package's observables and reactive state updates.
- **Dependency Injection**: Managed by `get_it` and `injectable` for modular and testable code.
- **Error Handling**: User-centric error messages and robust async error capturing.
- **Modular & Scalable Structure**: Organized by features (user input, home view, repo details) for scalability.

---

## API Used

- **GitHub REST API v3**:  
  Retrieves user profile data and repositories.  
  - [User API](https://docs.github.com/en/rest/users/users)
  - [Repos API](https://docs.github.com/en/rest/repos/repos)

---

## Packages Used

> All dependencies can be found in `pubspec.yaml`.

| Package                       | Purpose                                      |
|-------------------------------|----------------------------------------------|
| `get`                         | State management, navigation, widgets        |
| `dio`                         | Networking (API requests)                    |
| `flutter_screenutil`          | Responsive layout/sizing                     |
| `json_serializable`, `freezed`| Code generation for models                   |
| `dartz`                       | Functional programming, Either type          |
| `get_it`, `injectable`        | Dependency injection                         |
| `animate_do`                  | Animations                                   |
| `google_fonts`                | Custom Google Fonts                          |
| `fluttertoast`                | Toast notifications                          |
| `get_storage`                 | Local storage                                |
| `connectivity_plus`           | Network status                               |
| `flutter_dotenv`              | Environment variable config                  |
| `url_launcher`                | URL opening in repo details, etc.            |
| `awesome_dio_interceptor`     | Debug API logging                            |

---

## Folder Structure

```
lib/
├── core/
│   └── utils/               # App-wide helpers, constants
├── data/
│   └── repository/          # repository logic
|   └── api_service/         # API Implementation logic
├── injection.dart           # Dependency injection setup
├── main.dart                # App entry point
├── models/                  # Data models (GitHub user, repo, etc)
├── modules/
│   └── views/
│       ├── home_view/
│       │   ├── controller/  # Home screen controller (state, logic)
│       │   └── view/        # Home screen UI, widgets
│       ├── repo_details_view/
│       │   └── view/        # Single repo details screen
│       └── user_input_view/
│           ├── controller/  # User input (search) logic
│           └── view/        # Username search UI
├── routes/
│   └── routes_name.dart     # Named app routes
├── assets/                  # Images, icons, .env
```

---

## Where Each Package/Principle Is Used

- **get, get_storage**:  
  - State, routing, and simple persistent storage. Used in controllers (e.g., `UserInputController`, `HomeController`) and for navigation between views.
- **dio, awesome_dio_interceptor**:  
  - All API and HTTP logic (`data/api_service/`). Interceptor for logging requests.
- **flutter_screenutil**:  
  - Responsive UI in all views (e.g., `user_input_view.dart`, `home_view.dart`).
- **injectable, get_it**:  
  - Dependency injection setup in `injection.dart` and injected in repositories/controllers.
- **json_serializable, freezed, dartz**:  
  - Model classes and API result handling (`models/`).
- **animate_do**:  
  - Animations in UI components, mostly in views/widgets.
- **google_fonts**:  
  - Text styling and custom fonts in main UI.
- **fluttertoast, Get.snackbar**:  
  - User feedback for errors/success.
- **connectivity_plus**:  
  - (If used) For network awareness in repositories.
- **flutter_dotenv**:  
  - Securely manages any API keys or secrets using `.env` file.
- **url_launcher**:  
  - Opening links directly from repo details view.

---

For detailed usage examples, see each respective folder and check the code comments.
