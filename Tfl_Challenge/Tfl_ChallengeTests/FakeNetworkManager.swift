//
//  FakeNetworkManager.swift
//  Tfl_ChallengeTests
//
//  Created by Taijaun Pitt on 23/10/2023.
//

import Foundation
@testable import Tfl_Challenge

class FakeNetworkManager: NetworkerProtocol{
    
    func callTflApi(url: URL) async throws -> Data {
        let bundle = Bundle(for: FakeNetworkManager.self)
        
        guard let path = bundle.url(forResource: url.absoluteString, withExtension: "json") else {throw NetworkingError.invalidURL}
        
        do {
            let data = try Data(contentsOf: path)
            return data
        } catch {
            throw NetworkingError.dataNotFound
        }
    }
    
    
}
