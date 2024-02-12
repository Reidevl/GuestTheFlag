//
//  ScoreView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 12/2/24.
//

import SwiftUI

struct ScoreView: View {
    var userScore: Int
    
    var body: some View {
        Text("Score: \(userScore)")
            .foregroundStyle(.white)
            .font(.title.bold())
    }
}

#Preview {
    ScoreView(userScore: 1)
}
