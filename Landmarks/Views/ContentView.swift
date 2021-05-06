//
//  ContentView.swift
//  Landmarks
//
//  Created by Pankaj Kulkarni on 06/05/21.
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
//        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
