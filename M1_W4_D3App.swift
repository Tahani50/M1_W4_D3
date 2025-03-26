//
//  M1_W4_D3App.swift
//  M1_W4_D3
//
//  Created by Taibah Valley Academy on 3/25/25.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct M1_W4_D3App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    // AuthViewModel manages the authentication state
    @StateObject private var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                // Show the HomeView or LoginView based on login status
                if viewModel.isLoggedIn {
                    HomeView()
                        .environmentObject(viewModel)
                } else {
                    LoginView()
                        .environmentObject(viewModel) 
                }
            }
        }
    }
}
