//
//  AuthViewModel.swift
//  M1_W4_D3
//
//  Created by Taibah Valley Academy on 3/25/25.
//

import Foundation
import FirebaseAuth

// ViewModel for handling authentication logic using Firebase
class AuthViewModel: ObservableObject {
    
    // Tracks whether the user is currently logged in
    @Published var isLoggedIn: Bool = false
    
    // Holds any error messages related to auth actions
    @Published var errorMessage: String?
    
    // Check if a user is already authenticated when the app launches
    func checkAuthState() {
        if Auth.auth().currentUser != nil {
            // If a user is already logged in
            isLoggedIn = true
        } else {
            // If no user is logged in
            isLoggedIn = false
        }
    }
    
    // Handles user signup using Firebase Authentication
    func signup(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            // Switch back to the main thread to update the UI
            DispatchQueue.main.async {
                if let error = error {
                    // If there's an error, store the error message
                    self.errorMessage = "Error signing up: \(error.localizedDescription)"
                } else {
                    // Signup successful; update login state
                    self.isLoggedIn = true
                }
            }
        }
    }
    
    // Handles user login using Firebase Authentication
    func logIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            // Update UI on the main thread
            DispatchQueue.main.async {
                if let error = error {
                    // Show login error
                    self.errorMessage = "Error logging in: \(error.localizedDescription)"
                } else {
                    // Login successful
                    self.isLoggedIn = true
                }
            }
        }
    }
    
    // Signs the user out using Firebase Authentication
    func signOut() {
        do {
            // Attempt to sign out
            try Auth.auth().signOut()
            // Update login state on main thread
            DispatchQueue.main.async {
                self.isLoggedIn = false
            }
        } catch {
            // Print sign-out error to the console
            print("Error signing out: \(error.localizedDescription)")
        }
    }
}
