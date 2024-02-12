//
//  FlagView.swift
//  GuessTheFlag
//
//  Created by Reiwil Lugo on 12/2/24.
//

import SwiftUI

struct FlagView: View {
    
    var country: String
    
    var body: some View {
        Image(country)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

#Preview {
    FlagView(country: "Ukraine")
}
