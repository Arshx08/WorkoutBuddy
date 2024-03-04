//
//  DietPlansView.swift
//  WorkoutBuddy
//
//  Created by Arshdeep Singh on 2024-02-28.
//

import SwiftUI

struct DietPlansView: View {
    
  
    @State private var isVegSelected: Bool = true
      
    var body: some View {
        VStack{
            HStack{
                
                Toggle(isOn: $isVegSelected) {
                    Text("Vegetarian")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                      
                }
                .padding(10)
                
            }
            .padding()
            
            Text("List of Diet Plans")
                .padding()
         .background(Color.gray)
         
            
        }
        
        .navigationTitle("Diet Plans")
    }
}

#Preview {
    DietPlansView()
}
