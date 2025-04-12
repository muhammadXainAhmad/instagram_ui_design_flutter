# Instagram UI Clone (Flutter) 📱✨

A UI-only Instagram clone built with Flutter, featuring basic pages like login, signup, and password recovery. The project includes a splash screen and shared preferences for managing the login state. It also supports navigation between screens, replicating the look and feel of Instagram's mobile app interface.

## Features 🚀
- Modern Instagram-style dark-themed UI
- Instagram-style **login page** 🔑 
- **Signup page** to choose a username & password ✍️
- **Forgot password** page for instagram account recovery 🔒
- **Bottom sheet** modal for language selection 🌐
- **Navigation** setup for smooth transitions between pages 🔄
- Centralized styling using constants for colors and input borders 🎨
- **Splash screen** with **SharedPreferences** to manage user login state and navigate accordingly 🔐

## Screenshots 📸

<h2>Splash Screen</h2>
<p>
  <img src="assets/splashScreen.png" width="300"/>
</p>

<h2>Login Page</h2>
<p>
  <img src="assets/loginPage.png" width="300"/>
</p>

<h2>Signup Pages</h2>
<p>
  <img src="assets/signupPage1.png" width="300"/>
  <img src="assets/signupPage2.png" width="300"/>
</p>

<h2>Forgot Password Pages</h2>
<p>
  <img src="assets/forgotPage1.png" width="300"/>
  <img src="assets/forgotPage2.png" width="300"/>
</p>

<h2>Language Modal</h2>
<p>
  <img src="assets/languageModal.png" width="300"/>
</p>

<h2>Home Page</h2>
<p>
  <img src="assets/homePage.png" width="300"/>
</p>

## SharedPreferences Navigation 💡
- **Splash Screen** checks `isLoggedIn` in `SharedPreferences` to decide whether to show the Login page or Home screen.
- After login, `isLoggedIn` is set to `true` in `SharedPreferences`.
- On logout, `isLoggedIn` is set to `false`, redirecting users to the Login page on the next app launch.

## Notes 📝

- This project currently focuses on the **UI design** with no backend functionality.
- A learning project to practice Flutter UI components and basic navigation with SharedPreferences.
- **Future enhancements** could include form validation, state management, and backend integration with Firebase for user authentication.

## Tech Stack ⚙️

- **Flutter**: Used for building the cross-platform mobile UI.
- **Dart**: Programming language used in Flutter for the development of the app.
- **VS Code / Android Studio**: Integrated Development Environments (IDEs) used for coding and testing the app.
- **Git**: Version control tool for source code management.

