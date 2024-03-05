//
//  GuessTheFlagView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 12/2/24.
//

import SwiftUI

struct GuessTheFlagView: View {
    @StateObject var viewModel: ViewModel = .init()
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.6)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            FlagsSegment(countries: viewModel.countries, correctAnswer: viewModel.correctAnswer, userScore: viewModel.userScore, flagTapped: viewModel.flatTapped(_:), animationAmount: $viewModel.animationAmount, selectedFlag: $viewModel.selectedFlagIndex)
            
        }
        .alert(viewModel.scoreTitle, isPresented: $viewModel.showingScore) {
            Button("Continue", action: viewModel.askQuestion)
        } message: {
            Text(viewModel.scoreMessage)
        }
        .alert(viewModel.finalTitle, isPresented: $viewModel.showingFinalScore) {
            Button("Reset", action: viewModel.resetGame)
        } message: {
            Text("Your final score is \(viewModel.userScore)")
        }
    }
}

#Preview {
    GuessTheFlagView()
}
