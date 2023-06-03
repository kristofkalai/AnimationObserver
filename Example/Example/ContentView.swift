//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 06. 03..
//

import SwiftUI
import AnimationObserver

struct ContentView: View {
    @State private var opacity = 0.0
    @State private var opacityString = ""

    var body: some View {
        VStack {
            Group {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)

                Text("Hello, world!")
            }
            .opacity(opacity)

            Text(opacityString)
        }
        .padding()
        .onAppear {
            withAnimation(.linear(duration: 3).delay(1.5)) {
                opacity = 1.0
            }
        }
        .observeAnimation(for: opacity) {
            opacityString = String(format: "%.2f", $0)
        } onComplete: {
            opacityString = "Completed!"
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
