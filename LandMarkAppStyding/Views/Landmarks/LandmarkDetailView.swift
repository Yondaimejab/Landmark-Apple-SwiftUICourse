//
//  LandmarkDetailView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            LandMarkMapView(coordinate: landmark.locationFromCoordinate).frame(height: 300).ignoresSafeArea(edges: .top)
            LandMarkImageView(image: landmark.image).offset(y: -200).padding(.bottom, -200)
            ScrollView {
                LandmarkTitleView(landmark: landmark)
                Divider()
                LandmarkDescriptionView(landmark: landmark)
            }
            Spacer()
        }.navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: testLandMark)
    }
}
