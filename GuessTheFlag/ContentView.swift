//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel = .init()
    
    var body: some View {
        GuessTheFlagView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
