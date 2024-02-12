//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    @State private var userScore = 0
    @State private var attemptCount = 0
    
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""
    @State private var finalTitle = ""
    
    @State private var showingScore = false
    @State private var showingFinalScore = false
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.6)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flatTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(scoreMessage)
        }
        .alert(finalTitle, isPresented: $showingFinalScore) {
            Button("Reset", action: resetGame)
        } message: {
            Text("Your final score is \(userScore)")
        }
    }
    
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

#Preview {
    ContentView()
}
