//
//  ContentView.swift
//  ActivityApp
//
//  Created by Draven Nova on 6/8/26.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .green, .yellow, .orange, .red, .purple, .pink, .gray, .black, .indigo, .mint, .pink]
    
    @State private var selected = "Baseball"
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Let's try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )

                Text("\(selected)!")
                    .font(.title)
            }
            Button("Try again")
            {
                selected = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
        }
        
    }
}

#Preview {
    ContentView()
}
