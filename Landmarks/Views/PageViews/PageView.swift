//
//  PageView.swift
//  Landmarks
//
//  Created by Pankaj Kulkarni on 07/05/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        
        ZStack (alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        // Experiment
//        Add a button to PageView that makes the page view controller jump to the second view.
//        VStack (alignment: .leading, spacing: 20) {
//            PageViewController(pages: pages, currentPage: $currentPage)
//            Button("Just to 2nd") {
//                currentPage = currentPage == 0 ? 2 : 0
//            }
//        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map{FeatureCard(landmark: $0)})
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
