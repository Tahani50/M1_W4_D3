//
//  SignupView.swift
//  M1_W4_D3
//
//  Created by Taibah Valley Academy on 3/25/25.
//

import SwiftUI

// SignupView allows new users to create an account
struct SignupView: View {
    
    // Access the shared authentication view model
    @EnvironmentObject var viewModel: AuthViewModel
    
    // State variables to hold user input
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            
            Image("Signup")
                .resizable()
                .frame(width: 350, height: 250)
            
            Text("Signup")
                .font(.largeTitle)
            
            VStack {
                Form {
                    TextField("Email", text: $email)
                    
                    SecureField("Password", text: $password)
                    
                    // Display error message if signup fails
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    // Signup button
                    Button(action: {
                        viewModel.signup(email: email, password: password)
                    }) {
                        Text("Signup")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("Color1"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .frame(height: 230)
                
                // Link to navigate back to LoginView
                NavigationLink(destination: LoginView()) {
                    Text("Already have an account? Login")
                        .foregroundColor(Color("Color1")) 
                }
            }
        }
    }
}

#Preview {
    SignupView()
}
