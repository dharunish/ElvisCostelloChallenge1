//
//  ContentView.swift
//  ElvisCostelloChallenge1
//
//  Created by Dharunish Yugeswardeenoo on 6/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var img = ""
    @State private var message = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: img)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.title)
                .foregroundStyle(.purple)
                .fontWeight(.bold)
            Spacer()
            HStack {
                Button("Peace") {
                    message = "Peace"
                    img = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    img = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    img = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
