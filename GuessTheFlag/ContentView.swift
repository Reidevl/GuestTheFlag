//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200).ignoresSafeArea()
        
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center).ignoresSafeArea()
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.white)
            .background(.black.gradient)
            
    }
}

#Preview {
    ContentView()
}
