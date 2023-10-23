//
//  ContentView.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 20/10/2023.
//

import SwiftUI

struct TubeListView: View {
    @StateObject var tubeListViewModel: TubeListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                switch tubeListViewModel.viewSate {
                case .load(let tubes) :
                    if tubes.isEmpty {
                        ProgressView()
                    } else {
                        List(tubes){ tube in
                            TubeListCell(tubeName: tube.name, tubeStatus: tube.lineStatuses[0].statusSeverityDescription)
                        }
                    }
                case .error:
                    Text("Something went wrong pls try again!")
                }
            }
            .background(.white)
            .onAppear {
                Task{
                    await tubeListViewModel.getTubes(url: Constants.tflEndpoint)
                }
            }
            .navigationTitle("Tubes")
        }
    }
}

#Preview {
    TubeListView(tubeListViewModel: TubeListViewModel())
}
