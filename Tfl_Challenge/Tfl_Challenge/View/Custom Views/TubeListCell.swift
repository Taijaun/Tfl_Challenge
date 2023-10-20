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
        HStack{
            Text(tubeName)
            Text(tubeStatus)
        }
    }
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure")
}
