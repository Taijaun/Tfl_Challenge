//
//  TubeListViewModelTests.swift
//  Tfl_ChallengeTests
//
//  Created by Taijaun Pitt on 23/10/2023.
//

import XCTest
@testable import Tfl_Challenge

final class TubeListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testApiCallWithEverythingCorrect() async throws {
//        let networkManager = FakeNetworkManager()
//        XCTAssertNotNil(networkManager)
        let tubeListViewModel = await TubeListViewModel(networkManager: FakeNetworkManager())
        XCTAssertNotNil(tubeListViewModel)
        
        await tubeListViewModel.getTubeList(urlString: "testTube")
        let tubeTestList = await tubeListViewModel.tubeList
        XCTAssertEqual(tubeTestList.count, 1)
        
    }
    
    func testApiCallWithEmptyJson() async throws {
        let tubeListViewModel = await TubeListViewModel(networkManager: FakeNetworkManager())
        XCTAssertNotNil(tubeListViewModel)
        
        await tubeListViewModel.getTubeList(urlString: "tubeEmpty")
        let tubeTestList = await tubeListViewModel.tubeList
        XCTAssertEqual(tubeTestList.count, 0)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
