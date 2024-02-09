//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Button("Button 1"){ }
//                .buttonStyle(.bordered)
//            
//            Button("Button 2", role: .destructive){ }
//                .buttonStyle(.bordered)
//            
//            Button("Button 3"){ }
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
//
//            Button("Button 2", role: .destructive){ }
//                .buttonStyle(.borderedProminent)
//        }
        
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)
//        }
        
        Button {
            print("Button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil.circle")
                .padding()
                .foregroundColor(.white)
                .background(.red)
                .opacity(0.8)
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
