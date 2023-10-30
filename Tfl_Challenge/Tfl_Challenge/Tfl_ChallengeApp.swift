//
//  Tfl_ChallengeApp.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import SwiftUI

@main
struct Tfl_ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            TubeListView(tubeListViewModel: TubeListViewModel(networkManager: NetworkManager()))

        }
    }
}

