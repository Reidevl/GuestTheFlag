//
//  FlagsSegment.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 12/2/24.
//

import SwiftUI

struct FlagsSegment: View {
    var countries: [String]
    var correctAnswer: Int
    let userScore: Int
    let flagTapped: (Int) -> Void
    
    var body: some View {
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
                        flagTapped(number)
                    } label: {
                        FlagView(country: countries[number])
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
            
            Spacer()
            Spacer()
            
            ScoreView(userScore: userScore)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    let viewModel: ViewModel = .init()
    
    return Group {
        FlagsSegment(countries: viewModel.countries, correctAnswer: viewModel.correctAnswer, userScore: viewModel.userScore, flagTapped: viewModel.flatTapped(_:))
    }
    
}
