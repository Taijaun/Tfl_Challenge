//
//  NetworkerProtocol.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

protocol NetworkerProtocol {
    func callTflApi(url: URL) async throws -> Data
}
