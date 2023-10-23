//
//  TubeListViewModel.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

enum ViewState {
    case load(tubes: [Tube])
    case error
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
