//
//  SignUpView.swift
//  WorkoutBuddy
//
//  Created by Arshdeep Singh on 2024-02-28.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @State private var height: String = ""

    var body: some View {
        
        
            VStack {
            
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                
                
                TextField("Weight in Pounds", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                
                TextField("Height", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                
                Button(action: {
                    //  signup logic here
                  
                }) {
                    Text("Sign Up")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                .navigationTitle("SignUp")
            
            }
            .padding()
        }
    
}

#Preview {
    SignUpView()
}
