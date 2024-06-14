//
//  ContentView.swift
//  QuizApp
//
//  Created by Scholar on 6/7/24.
//ihkewd

import SwiftUI
struct ContentView: View {
    @State private var result = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.blue)
                    .ignoresSafeArea()
                    .opacity(0.2)
                
                VStack {
                    Text(result)
                        .font(.system(size: 100))
                    Text("What's your favorite sport?")
                        .font(.title)
                    Button("Basketball")
                    {
                        result = "🏀"}
                    .font(.title2)
                    .tint(Color.blue)

                    .buttonStyle(.borderedProminent)

                    Button("Voleyball") {
                        result = "🏐"}
                    .tint(Color.blue)
                    .buttonStyle(.borderedProminent)

                    .font(.title2)
                    Button("Soccer") {
                        result = "⚽️"}
                    .tint(Color.blue)
                    .buttonStyle(.borderedProminent)

                    .font(.title2)
                    Button("Football") {
                        result = "🏈"}
                    .tint(Color.blue)
                    .buttonStyle(.borderedProminent)

                    .font(.title2)
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            NavigationLink(destination: SecondView()) {
                                Text("Next")
                            }
                        }
                    }
                }
            }
            
        }
    }
}
#Preview {
    ContentView()
}
