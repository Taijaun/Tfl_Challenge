//
//  NetworkManager.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

class NetworkManager: NetworkerProtocol {
    func callTflApi(url: URL) async throws -> Data {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
        } catch let error{
            throw error
        }
    }
}
