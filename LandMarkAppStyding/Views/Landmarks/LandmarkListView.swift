//
//  LandmarkListView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandmarkListView: View {
    @State private var showFavoritesOnly: Bool = false
    @EnvironmentObject var modelData: ModelData

    var filteredLandmarks: [Landmark] {
        return modelData.landmarks.filter { (landmark) -> Bool in
            if showFavoritesOnly {
                return landmark.isFavorite
            }
            return true
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only").font(.title2)
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink (destination: LandmarkDetailView(landmark: landmark),
                        label: {
                            LandmarkListItemView(landmark: landmark)
                    }).buttonStyle(PlainButtonStyle())
                }
            }.navigationTitle("Landmarks").font(.largeTitle)
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
