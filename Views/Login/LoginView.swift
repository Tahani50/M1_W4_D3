//
//  LoginView.swift
//  M1_W4_D3
//
//  Created by Taibah Valley Academy on 3/25/25.
//

import SwiftUI

// LoginView allows users to input their email and password and log in
struct LoginView: View {
    
    // Access the shared authentication view model
    @EnvironmentObject var viewModel: AuthViewModel
    
    // State variables to hold user input
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            
            Image("Login")
                .resizable()
                .frame(width: 250, height: 250)
            
            Text("Login").font(.title)
            
            VStack {
                Form {
                    TextField("Email", text: $email)
                    
                    SecureField("Password", text: $password)
                    
                    // Show error message from view model if login fails
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    // Login button
                    Button(action: {
                        viewModel.logIn(email: email, password: password)
                    }) {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("Color"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .frame(height: 230)
                
                // Navigation link to go to SignupView
                NavigationLink(destination: SignupView()) {
                    Text("Don't have an account? Signup")
                        .foregroundColor(Color("Color")) 
                }
            }
        }
    }
}


#Preview {
    LoginView()
}
