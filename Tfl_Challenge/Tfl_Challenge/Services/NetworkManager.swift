//
//  NetworkManager.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

class NetworkManager: Networkable {
    func request<T>(url: String, modelType: T.Type) async throws -> T where T : Decodable {
        guard let urlObj = URL(string: url) else { throw NetworkingError.invalidURL }
        let (data, _) = try await URLSession.shared.data(from: urlObj)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
