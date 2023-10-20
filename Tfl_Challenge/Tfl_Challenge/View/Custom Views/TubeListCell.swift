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
    @State var color: Color?
    
    var body: some View {
        HStack{
            Text(tubeName)
            Spacer()
            Text(tubeStatus)
        }.background(color)
            .onAppear(){
                getTubeLineColour(tubeColour: tubeName)
            }
    }
    
    func getTubeLineColour(tubeColour: String){
        switch tubeColour{
        case "Bakerloo":
            self.color = .yellow
        case "Central":
            self.color = .red
        default:
            self.color = .clear
        }
    }
}

enum tubeColour {
    case bakerloo
    case central
    case circle
    case district
    case hCity
    case jubilee
    case metropolitan
    case northern
    case piccadilly
    case victoria
    case wCity
}

#Preview {
    TubeListCell(tubeName: "Bakerloo", tubeStatus: "Planned Closure")
}
