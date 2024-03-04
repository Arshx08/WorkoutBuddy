//
//  ExercisesView.swift
//  WorkoutBuddy
//
//  Created by Arshdeep Singh on 2024-02-28.
//

import SwiftUI

struct ExercisesView: View {
    @State private var muscleGroup = ""
    
    var body: some View {
        VStack{
   
            VStack{
                HStack{
                    TextField("Muscle Group", text: $muscleGroup)
                        .padding()
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 1)
                    Button(action:{}){
                        Text("➡️")
                    }
                    
                }
                .padding(50)
                VStack{
                    Text("List of Exercises")
                }
                .padding(20)
                .background(Color.gray)
            }
            .padding()
        
        }
        
        
        
        .navigationTitle("Exercises")
    }
}

#Preview {
    ExercisesView()
}
