//
//  TubeModel.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

struct Tube: Decodable {
    let id: String
    let name: String
    let lineStatuses: [LineStatus]
}
extension Tube: Identifiable {}

struct LineStatus: Decodable {
    let id: Int
    let statusSeverity: Int
    let statusSeverityDescription: String
}

extension LineStatus: Identifiable {}

extension Tube {
    static var mockTubes: [Tube] {
        return [Tube(id:"", name: "", lineStatuses: [LineStatus(id:1, statusSeverity: 10, statusSeverityDescription:"")])]
    }
}
