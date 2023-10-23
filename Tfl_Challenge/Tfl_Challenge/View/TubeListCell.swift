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
    // take color as a hex string
    @State var color: Color?
    
    var body: some View {
        HStack{
            Rectangle()
                .fill(tubeName.getTubeLineColour())
                .frame(width: 10, height: 30)
            Text(tubeName)
                .dynamicTypeSize(.accessibility1)
            Spacer()
            Text(tubeStatus)
        }
    }
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure")
}
