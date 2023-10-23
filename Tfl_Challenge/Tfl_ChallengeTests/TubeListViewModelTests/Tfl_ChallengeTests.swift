//
//  Tfl_ChallengeTests.swift
//  Tfl_ChallengeTests
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import XCTest
@testable import Tfl_Challenge

final class Tfl_ChallengeTests: XCTestCase {

    var viewModel: TubeListViewModel!
    var networkManager: Networkable!
    
    override func setUp() {
        
        networkManager = FakeNetworkManager()
        viewModel = TubeListViewModel(networkManager:networkManager)
    }

    override func tearDown() {
        networkManager = nil
        viewModel = nil
    }

    func testGetTubesSuccess() async {
        await viewModel.getTubes(url:"www.test.com")
        
        XCTAssertEqual(viewModel.viewSate, .load(tubes: Tube.mockTubes))
    }
    
    func testGetTubesFailure() async {
        await viewModel.getTubes(url:"")
        
        XCTAssertEqual(viewModel.viewSate, .error)
    }
    
}
