//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
