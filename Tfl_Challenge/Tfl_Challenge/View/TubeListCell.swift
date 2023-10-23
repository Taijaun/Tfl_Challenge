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
        
        GeometryReader(content: { geometry in
            HStack (alignment: .center) {
                Rectangle()
                    .fill(tubeName.getTubeLineColour())
                    .frame(width: 5, height: geometry.size.height)
                Text(tubeName).multilineTextAlignment(.center)
                    .frame(maxWidth: geometry.size.width/2, maxHeight:.infinity,  alignment: .leading)
                    .accessibilityValue(tubeName)
                    .accessibilityLabel("Tube name")
                    .accessibilityAddTraits(.isStaticText)
                    .dynamicTypeSize(.accessibility5)
                Text(tubeStatus)
                    .frame(maxWidth: geometry.size.width/2, maxHeight:.infinity,  alignment: .trailing)
                    .accessibilityValue(tubeStatus)
                    .accessibilityLabel("Tube Status")
                    .accessibilityAddTraits(.isStaticText)
                    .dynamicTypeSize(.accessibility5)
            }
        })
      
    }
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure \n Planned Closure \n Planned Closure \n")
}
