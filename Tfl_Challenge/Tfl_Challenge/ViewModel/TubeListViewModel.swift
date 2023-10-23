//
//  TubeListViewModel.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

enum ViewState: Equatable {
    case load(tubes: [Tube])
    case error
    
    static func == (lhs: ViewState, rhs: ViewState) -> Bool {
        switch (lhs, rhs) {
        case (.error, .error):
            return true
        case (.load(tubes: let lhsTubes), .load(tubes: let rhsTubes)):
            return lhsTubes.count == rhsTubes.count
        default:
            return false
        }
    }
}

final class TubeListViewModel: ObservableObject {

    private var tubeList = [Tube]()
    private let networkManager: Networkable
    
    @Published var viewSate = ViewState.load(tubes: [])
    
    init(networkManager: Networkable = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    @MainActor func getTubes(url: String) async {
        do {
            tubeList = try await networkManager.request(url:url, modelType: [Tube].self)
            viewSate = .load(tubes: tubeList)
        } catch {
            viewSate = .error
        }
    }
}
