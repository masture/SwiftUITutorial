//
//  ContentView.swift
//  Landmarks
//
//  Created by Pankaj Kulkarni on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    
    
    var body: some View {
        
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
//        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
