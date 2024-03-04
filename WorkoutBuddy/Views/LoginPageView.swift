//
//  LoginPageView.swift
//  WorkoutBuddy
//
//  Created by Arshdeep Singh on 2024-02-28.
//

import SwiftUI

struct LoginPageView: View {
    
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 30)
                        
                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 20)
                            .padding(.bottom, 10)
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                        
                           
                        Button(action: {
                            // Performing login logic here
                        }) {
                            Text("Login")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                    }
                    .padding()
                    .navigationBarTitle("Login")
                   
                }
            }


#Preview {
    LoginPageView()
}
