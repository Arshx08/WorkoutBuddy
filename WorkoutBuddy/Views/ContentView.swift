//
//  ContentView.swift
//  WorkoutBuddy
//
//  Created by Arshdeep Singh on 2024-02-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var loginActive = false
    @State private var signupActive = false
    
    @State private var weightInPounds: String = ""
    @State private var feet: String = ""
    @State private var inches: String = ""
    @State private var bmiResult: String = ""

    var body: some View {
        
        NavigationView{
            VStack {
                Text("Let's calculate BMI first..")
                    .font(.title2)
          
                
                HStack {
                                TextField("Weight (lbs)", text: $weightInPounds)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.numberPad)
                                    .padding(.horizontal, 20)
                                
                                Spacer()
                            }
                            .padding(.bottom, 10)

                            HStack {
                                TextField("Feet", text: $feet)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.numberPad)
                                    .padding(.horizontal, 20)
                                
                                TextField("Inches", text: $inches)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.numberPad)
                                    .padding(.horizontal, 20)
                                
                                
                            }
                            .padding(.bottom, 30)
                
                Button(action: calculateBMI) {
                               Text("Calculate BMI")
                                   .frame(minWidth: 0, maxWidth: .infinity)
                                   .padding()
                                   .foregroundColor(.white)
                                   .background(Color.blue)
                                   .cornerRadius(10)
                           }
                           .padding(.horizontal, 20)

                           Text("BMI Result: \(bmiResult)")
                               .padding(.top, 20)
                
            }
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    
                    HStack{
                        
                        NavigationLink(destination: ExercisesView()) {
                                           VStack {
                                               Image(systemName: "dumbbell.fill")
                                                   .foregroundColor(.gray)
                                                   .font(.system(size: 20))
                                               
                                               Text("Exercises")
                                                   .font(.headline)
                                                   .foregroundColor(.gray)
                                           }
                                           .padding()
                                       }
                        
                        NavigationLink(destination: HealthTipsView()) {
                                           VStack {
                                               Image(systemName: "heart.fill")
                                                   .foregroundColor(.gray)
                                                   
                                                   .font(.system(size: 20))
                                               
                                               Text("Health Tips")
                                                   .font(.headline)
                                                   .foregroundColor(.gray)
                                           }
                                           .padding()
                                       }
                        NavigationLink(destination: DietPlansView()) {
                                           VStack {
                                               Image(systemName: "fork.knife")
                                                   .foregroundColor(.gray)
                                                 
                                                   .font(.system(size: 20))
                                               
                                               Text("Diet Plans")
                                                   .font(.headline)
                                                   .foregroundColor(.gray)
                                                   
                                           }
                                           .padding()
                                       }
                        

                        
                    }
                }
            }
                       
   
            .padding()
            .navigationBarTitle("Workout Buddy")
        
            .navigationBarItems(trailing: HStack {
                            NavigationLink(destination: LoginPageView(), isActive: $loginActive) {
                                Text("Login")
                            }

                            NavigationLink(destination: SignUpView(), isActive: $signupActive) {
                                Text("Sign Up")
                            }
                        })
            
        }
    }
    
    private func calculateBMI() {
          guard let weight = Double(weightInPounds),
                let feet = Double(feet),
                let inches = Double(inches) else {
              bmiResult = "Invalid input"
              return
          }

          let totalHeightInInches = (feet * 12) + inches
          let bmi = (weight / (totalHeightInInches * totalHeightInInches)) * 703.0
          bmiResult = String(format: "%.2f", bmi)
      }
    
    
}



#Preview {
    ContentView()
}
