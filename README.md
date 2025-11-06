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


## 📱 App Screenshots  

### 🌀 Splash  
<p align="center">
  <img src="https://github.com/user-attachments/assets/b1fd4d25-1053-4ed5-bf83-1fe81bf5b40a" alt="splash" width="360" height="640"/>
</p>

---

### 👤 User Input Page (Light & Dark)
<p align="center">
  <img src="https://github.com/user-attachments/assets/cf77fbfb-68a5-4258-b2a3-b1d073c1e206" alt="input_light" width="360" height="640" hspace="10"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/517b1d6e-c216-4248-bbc6-4d14dc4a3f03" alt="input_dark" width="360" height="640"/>
</p>

---

### 👨‍💼 User Profile Page (Light & Dark)
<p align="center">
  <img src="https://github.com/user-attachments/assets/a0ba99f9-c848-45d1-84f4-dd555aad4df3" alt="profile_light" width="360" height="640" hspace="10"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/9b989f40-6f8e-49fb-99b7-80e009a0f181" alt="profile_dark" width="360" height="640"/>
</p>

---

### 📦 Repo Details Page (Light & Dark)
<p align="center">
  <img src="https://github.com/user-attachments/assets/8710824f-7008-40b7-8a04-8f1517d641d7" alt="details_light" width="360" height="640" hspace="10"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/f74652c3-0d0a-4420-bef9-8ff66584ed89" alt="details_dark" width="360" height="640"/>
</p>





