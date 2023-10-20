//
//  ContentView.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tubeListViewModel: TubeListViewModel
    
    var body: some View {
        VStack {
            List(tubeListViewModel.tubeList) { tube in
                Text(tube.name)
            }
        }
        .onAppear {
            Task{
                await tubeListViewModel.getTubeList(urlString: "https://api.tfl.gov.uk/Line/Mode/Tube/Status")
            }
        }
    }
    
}

//#Preview {
//    ContentView(tubeListViewModel: TubeListViewModel(networkManager: NetworkManager()))
//}
