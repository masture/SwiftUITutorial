//
//  ContentView.swift
//  WatchLandmark Extension
//
//  Created by Pankaj Kulkarni on 07/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
