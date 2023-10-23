//
//  FakeNetworkManager.swift
//  Tfl_ChallengeTests
//
//  Created by Taijaun Pitt on 23/10/2023.
//

import Foundation
@testable import Tfl_Challenge

class FakeNetworkManager: Networkable {
    func request<T>(url: String, modelType: T.Type) async throws -> T where T : Decodable {
        if url.isEmpty { throw NetworkingError.invalidURL }
        return Tube.mockTubes as! T
    }
}
