# SwiftUI Firebase Authentication App

This is a simple iOS application built using **SwiftUI** and **Firebase Authentication**. The app allows users to **sign up**, **log in**, and **log out** using their email and password. It demonstrates the use of `FirebaseAuth`, `ObservableObject` for state management, and basic navigation using `NavigationStack`.

---

## 🚀 Features

- Firebase Authentication integration (Email & Password)
- User-friendly UI with SwiftUI
- Sign up screen with form validation
- Login screen with error handling
- Home screen with sign-out functionality
- State management using `@EnvironmentObject` and `@StateObject`

---

## 🛠️ Technologies Used

- SwiftUI
- Firebase Authentication
- Firebase SDK
- MVVM architecture pattern

---

## 📱 How It Works

1. On launch, the app checks if a user is already logged in.
2. If not logged in, the **Login screen** is shown.
3. Users can log in or tap a link to go to the **Signup screen**.
4. After successful login or signup, the **Home screen** is displayed.
5. Users can log out via the **Sign Out** button on the Home screen.

---

## 🧪 Setup Instructions

1. Clone the repository.
2. Open the `.xcodeproj` in Xcode.
3. Install Firebase via Swift Package Manager.
4. Create a Firebase project in the [Firebase Console](https://console.firebase.google.com).
5. Download the `GoogleService-Info.plist` file and add it to your Xcode project.
6. Enable **Email/Password Authentication** in the Firebase Console.
7. Build and run the app on a simulator or device.



 
