//
//  GuessTheFlagViewModel.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 12/2/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @Published var correctAnswer = Int.random(in: 0...2)

    @Published var userScore = 0
    @Published var attemptCount = 0
    
    @Published var scoreTitle = ""
    @Published var scoreMessage = ""
    @Published var finalTitle = ""
    
    @Published var showingScore = false
    @Published var showingFinalScore = false
    
    // METHODS
    
    func flatTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
            scoreMessage = "Your score is \(userScore)"
        } else {
            scoreTitle = "Wrong"
            if userScore > 0 { userScore -= 1 }
            scoreMessage = "That's the flag of \(countries[number])"
        }
        
        showingScore = true
        attemptCount += 1
    }
    
    func askQuestion() {
        if attemptCount == 8 {
            finalTitle = "Game over"
            showingFinalScore = true
        }
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame() {
        attemptCount = 0
        userScore = 0
    }
}
