//
//  LandmarkTitleView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandmarkTitleView: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        return modelData.landmarks.firstIndex { (dataLandmark) -> Bool in
            return dataLandmark.id == landmark.id
        } ?? 0
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(landmark.name).font(.title).foregroundColor(.black)
                FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
            HStack {
                Text(landmark.park).font(.subheadline)
                Spacer()
                Text(landmark.state)
            }.foregroundColor(.secondary)
        }.padding()
    }
}

struct LandmarkTitleView_Previews: PreviewProvider {
    static var modelData = ModelData()
    
    static var previews: some View {
        LandmarkTitleView(landmark: modelData.landmarks[0]).environmentObject(modelData)
    }
}
