//
//  NetworkerProtocol.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

protocol Networkable {
    func request<T: Decodable>(url: String, modelType: T.Type) async throws -> T
}
