//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Pankaj Kulkarni on 07/05/21.
//

import SwiftUI

struct FeatureCard: View {
    
    var landmark: Landmark
    
    var body: some View {
        landmark.featuredImage?
            .resizable()
            .aspectRatio(3.0 / 2.0, contentMode: .fit)
            .overlay(TextOverlay(landmark: landmark))
            
    }
}

struct TextOverlay: View {
    
    var landmark: Landmark
    
    var  gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
    
    
    
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().landmarks[0])
    }
}
