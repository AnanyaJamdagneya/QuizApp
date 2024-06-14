//
//  ThirdView.swift
//  QuizApp
//
//  Created by Scholar on 6/7/24.
//

import SwiftUI

struct ThirdView: View {
    @State private var result = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(result)
                    .font(.system(size: 100))
                Text("What's your favorite animal?")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .tint(Color.blue)
                Button("Dog") {
                    result = "🐶"}
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.blue)
                    Button("Cat") {
                        result = "🐱"}
                    .font(.title2)
                    .buttonStyle(.borderedProminent)

                Button("Dolphin") {
                    result = "🐬"}
                .font(.title2)
                .tint(Color.blue)
                .buttonStyle(.borderedProminent)

                Button("Elephant") {
                    result = "🐘"}
                .font(.title2)
                .tint(Color.blue)
                .buttonStyle(.borderedProminent)

                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: SecondView()) {
                            Text("Back")
                        }
                    }
                }
            }
        }
    }
  //  @State private var result = ""
}

#Preview {
    ThirdView()
}
