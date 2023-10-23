//
//  String+Extension.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 23/10/23.
//

import Foundation
import SwiftUI

extension String {
    func getTubeLineColour()-> Color {
        switch self {
        case "Bakerloo":
            return Color(hex: "924a18")
        case "Central":
            return Color(hex:"f00000")
        case "Circle":
            return Color(hex:"ffcb00")
        case "District":
            return Color(hex:"00741b")
        case "Hammersmith & City":
            return Color(hex:"e296b0")
        case "Metropolitan":
            return Color(hex:"800058")
        case "Northern":
            return Color(hex:"000000")
        case "Piccadilly":
            return Color(hex:"001baf")
        case "Victoria":
            return Color(hex:"00a3e8")
        case "Waterloo & City":
            return Color(hex:"4fd3bc")
        case "Jubilee":
            return Color(hex:"697379")
        default:
            return .clear
        }
    }
}
