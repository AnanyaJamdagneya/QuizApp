//
//  SecondView.swift
//  QuizApp
//
//  Created by Scholar on 6/7/24.
//

import SwiftUI

struct SecondView: View {
    @State private var result = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(result)
                    .font(.system(size: 100))
                Text("What is your favorite color?")
                    .font(.largeTitle)
                Button("Pink") {
                    result = "🩷"}
                .tint(Color.blue)
                .buttonStyle(.borderedProminent)

                .font(.title2)
                    Button("Blue") {
                        result = "💙"}
                    .font(.title2)
                    .tint(Color.blue)
                    .buttonStyle(.borderedProminent)

                Button("Green") {
                    result = "💚"}
                .tint(Color.blue)
                .buttonStyle(.borderedProminent)

                .font(.title2)
                Button("Purple") {
                    result = "💜"}
                .tint(Color.blue)
                .buttonStyle(.borderedProminent)

                .font(.title2)
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ThirdView()) {
                            Text("Next")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
