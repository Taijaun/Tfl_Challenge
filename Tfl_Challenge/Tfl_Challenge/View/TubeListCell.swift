//
//  TubeListCell.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import SwiftUI

struct TubeListCell: View {
    
    let tubeName: String
    let tubeStatus: String
    
    var body: some View {
        HStack {
            Rectangle()
                    .fill(tubeName.getTubeLineColour())
                    .frame(width: 5, height: 70)
            Text(tubeName)
                .accessibilityHidden(true)
                .frame(alignment: .leading)
            Spacer()
            Text(tubeStatus)
                .frame(alignment: .trailing)
        }
        .accessibilityValue(tubeName)
        .accessibilityLabel("Tube name")
        .accessibilityAddTraits(.isStaticText)
        .accessibilityHint("and status is \(tubeStatus)")
        .environment(\.sizeCategory, .extraExtraExtraLarge)
        
    }
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure \n Planned Closure \n Planned Closure \n")
}
