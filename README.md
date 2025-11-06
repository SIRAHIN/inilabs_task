<p align="center">
  <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="100" alt="GitHub Logo"><br>
  <h1>inilabs_task</h1>
</p>

## 🚀 Project Overview

This project is a <img src="https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.svg" height="24" valign="middle" alt="Flutter Logo"> Flutter application that allows users to search for a <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" height="24" valign="middle" alt="GitHub Logo"> GitHub user and view their repositories. The app displays repositories in both grid and list views with filtering and detail options.

---

## ✨ Core Principles

- 🛠️ **Separation of Concerns**: Logic is separated into controllers, views, and models for maintainability.
- 🔁 **Reactive Programming**: Uses the <img src="https://raw.githubusercontent.com/jonataslaw/getx-community/master/docs/assets/getx_icon.png" height="18" valign="middle"> `GetX` package's observables and reactive state updates.
- 🧩 **Dependency Injection**: Managed by <img src="https://raw.githubusercontent.com/fluttercommunity/get_it/master/resources/logo/getit.png" height="16"> `get_it` and 🧪 `injectable` for modular and testable code.
- 🛡 **Error Handling**: User-centric error messages and robust async error capturing.
- 🏗️ **Modular & Scalable Structure**: Organized by features (user input, home view, repo details) for scalability.

---

## 🌐 API Reference

- <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" height="20" alt="GitHub Logo"> **GitHub REST API v3**  
  Retrieves user profile data and repositories:  
  - User API
  - Repos API

---

## 📦 Main Packages Used

> All dependencies can be found in `pubspec.yaml`.

| Icon | Package                         | Purpose                                      |
|:----:|---------------------------------|----------------------------------------------|
| <img src="https://raw.githubusercontent.com/jonataslaw/getx-community/master/docs/assets/getx_icon.png" height="18"> | `get`                         | State management, navigation, widgets        |
| <img src="https://avatars.githubusercontent.com/u/26632588?s=200&v=4" height="18"> | `dio`                         | Networking (API requests)                    |
| <img src="https://avatars.githubusercontent.com/u/14101776?s=200&v=4" height="18"> | `flutter_screenutil`          | Responsive layout/sizing                     |
| <img src="https://img.icons8.com/ios-filled/30/000000/code-file.png" height="18"> | `json_serializable`, `freezed`| Code generation for models                   |
| <img src="https://avatars.githubusercontent.com/u/75380566?s=200&v=4" height="18"> | `dartz`                       | Functional programming, Either type          |
| <img src="https://raw.githubusercontent.com/fluttercommunity/get_it/master/resources/logo/getit.png" height="18"> | `get_it`, `injectable`        | Dependency injection                         |
| <img src="https://raw.githubusercontent.com/joemasilotti/animate_do/main/assets/logo.png" height="18"> | `animate_do`                  | Animations                                   |
| <img src="https://cdn.jsdelivr.net/gh/google/material-design-icons@main/font/MaterialIconsOutlined.ttf" height="18"> | `google_fonts`                | Custom Google Fonts                          |
| <img src="https://img.icons8.com/fluency/48/000000/filled-message.png" height="18"> | `fluttertoast`                | Toast notifications                          |
| <img src="https://img.icons8.com/ios-filled/30/000000/hdd.png" height="18"> | `get_storage`                 | Local storage                                |
| <img src="https://img.icons8.com/ios-glyphs/30/000000/wifi.png" height="18"> | `connectivity_plus`           | Network status                               |
| <img src="https://img.icons8.com/color/48/000000/envira.png" height="18"> | `flutter_dotenv`              | Environment variable config                  |
| <img src="https://img.icons8.com/material-outlined/24/000000/attach.png" height="18"> | `url_launcher`                | URL opening in repo details, etc.            |
| <img src="https://img.icons8.com/ios-glyphs/30/000000/bug.png" height="18"> | `awesome_dio_interceptor`     | Debug API logging                            |

---

## 🗂️ Project Folder Structure

```plaintext
lib/
├── core/
│   └── utils/               # App-wide helpers, constants
├── data/
│   └── repository/          # API and repository logic
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

## 🧭 Package & Principle Usage Guide

- <img src="https://raw.githubusercontent.com/jonataslaw/getx-community/master/docs/assets/getx_icon.png" height="16"> **get**, <img src="https://img.icons8.com/ios-filled/30/000000/hdd.png" height="16"> **get_storage**:  
  - State, routing, and simple persistent storage. Used in controllers (e.g., `UserInputController`, `HomeController`) and for navigation between views.

- <img src="https://avatars.githubusercontent.com/u/26632588?s=200&v=4" height="16"> **dio**, <img src="https://img.icons8.com/ios-glyphs/30/000000/bug.png" height="16"> **awesome_dio_interceptor**:  
  - All API and HTTP logic (`data/repository/`). Interceptor for logging requests.

- <img src="https://avatars.githubusercontent.com/u/14101776?s=200&v=4" height="16"> **flutter_screenutil**:  
  - Responsive UI in all views (e.g., `user_input_view.dart`, `home_view.dart`).

- <img src="https://raw.githubusercontent.com/fluttercommunity/get_it/master/resources/logo/getit.png" height="16"> **injectable, get_it**:  
  - Dependency injection setup in `injection.dart` and injected in repositories/controllers.

- <img src="https://img.icons8.com/ios-filled/30/000000/code-file.png" height="16"> **json_serializable, freezed, dartz**:  
  - Model classes and API result handling (`models/`).

- <img src="https://raw.githubusercontent.com/joemasilotti/animate_do/main/assets/logo.png" height="16"> **animate_do**:  
  - Animations in UI components, mostly in views/widgets.

- <img src="https://cdn.jsdelivr.net/gh/google/material-design-icons@main/font/MaterialIconsOutlined.ttf" height="16"> **google_fonts**:  
  - Text styling and custom fonts in main UI.

- <img src="https://img.icons8.com/fluency/48/000000/filled-message.png" height="16"> **fluttertoast**, <img src="https://img.icons8.com/fluency/48/000000/error.png" height="16"> **Get.snackbar**:  
  - User feedback for errors/success.

- <img src="https://img.icons8.com/ios-glyphs/30/000000/wifi.png" height="16"> **connectivity_plus**:  
  - (If used) For network awareness in repositories.

- <img src="https://img.icons8.com/color/48/000000/envira.png" height="16"> **flutter_dotenv**:  
  - Securely manages any API keys or secrets using `.env` file.

- <img src="https://img.icons8.com/material-outlined/24/000000/attach.png" height="16"> **url_launcher**:  
  - Opening links directly from repo details view.

---

<sub>For detailed usage examples, see each respective folder and check the code comments.</sub>
