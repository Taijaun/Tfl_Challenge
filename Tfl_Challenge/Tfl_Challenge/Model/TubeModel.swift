//
//  TubeModel.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

struct Tube: Codable, Identifiable{
    var id, name: String
    var lineStatuses: [lineStatus]
}

struct lineStatus: Codable, Identifiable{
    var id, statusSeverity: Int
    var statusSeverityDescription: String
}
