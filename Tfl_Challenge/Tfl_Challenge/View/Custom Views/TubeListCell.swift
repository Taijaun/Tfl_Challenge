//
//  TubeListCell.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import SwiftUI

struct TubeListCell: View {
    // Make background change depending on tube name?
    // Or make small square depending on tube name
    // Digimon project has example
    let tubeName: String
    let tubeStatus: String
    
    var body: some View {
        HStack{
            Text(tubeName)
            Spacer()
            Text(tubeStatus)
        }
    }
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure")
}
