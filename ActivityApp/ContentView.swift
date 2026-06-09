//
//  ContentView.swift
//  ActivityApp
//
//  Created by Draven Nova on 6/8/26.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var selected = "Baseball"
    
    var body: some View {
        VStack{
            Text("Let's try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )

                Text("\(selected)!")
                    .font(.title)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
