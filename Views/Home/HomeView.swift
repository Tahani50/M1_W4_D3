//
//  HomeView.swift
//  M1_W4_D3
//
//  Created by Taibah Valley Academy on 3/25/25.
//

import SwiftUI

// HomeView displays a welcome message, an image, and a Sign Out button
struct HomeView: View {
    
    // Access the shared AuthViewModel to manage authentication state
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            Text("Welcome to Home!")
                .font(.largeTitle)
            
            Image("Home")
                .resizable()
                .frame(width: 250, height: 250)
            
            // Sign Out button
            Button(action: {
                viewModel.signOut() // Call signOut method in AuthViewModel
            }) {
                Text("Sign Out")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}


#Preview {
    HomeView()
}
