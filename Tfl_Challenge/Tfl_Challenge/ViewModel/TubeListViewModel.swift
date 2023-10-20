//
//  TubeListViewModel.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import Foundation

@MainActor
class TubeListViewModel: ObservableObject{
    @Published var tubeList = [Tube]()
    
    var networkManager: NetworkerProtocol
    
    init( networkManager: NetworkerProtocol) {
        self.networkManager = networkManager
    }
    
    func getTubeList(urlString: String) async {
        guard let url = URL(string: urlString) else {
            return
        }
        
        do {
            let data = try await self.networkManager.callTflApi(url: url)
            let tubeData = try JSONDecoder().decode([Tube].self, from: data)
            self.tubeList = tubeData
            
        } catch let error {
            return
        }
    }
}
