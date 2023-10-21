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
                .fill(color ?? .clear)
                .frame(width: 10, height: 30)
            Text(tubeName)
            Spacer()
            Text(tubeStatus)
        }.onAppear(){
                getTubeLineColour(tubeColour: tubeName)
            }
    }
    
    func getTubeLineColour(tubeColour: String){
        switch tubeColour{
        case "Bakerloo":
            self.color = Color(hex: "924a18")
        case "Central":
            self.color = Color(hex:"f00000")
        case "Circle":
            self.color = Color(hex:"ffcb00")
        case "District":
            self.color = Color(hex:"00741b")
        case "Hammersmith & City":
            self.color = Color(hex:"e296b0")
        case "Metropolitan":
            self.color = Color(hex:"800058")
        case "Northern":
            self.color = Color(hex:"000000")
        case "Piccadilly":
            self.color = Color(hex:"001baf")
        case "Victoria":
            self.color = Color(hex:"00a3e8")
        case "Waterloo & City":
            self.color = Color(hex:"4fd3bc")
        case "Jubilee":
            self.color = Color(hex:"697379")
            
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
