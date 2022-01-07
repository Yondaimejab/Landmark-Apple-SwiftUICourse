//
//  CategoryRow.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/29/20.
//

import SwiftUI

struct CategoryRowView: View {
    
    var categoryName: String = ""
    var landmarkList: [Landmark] = []
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName).font(.headline).padding(.leading, 15).padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(landmarkList) { landmark in
                        NavigationLink(
                            destination: LandmarkDetailView(landmark: landmark)) {
                            CategoryItemView(landmark: landmark)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(categoryName: "Rivers", landmarkList: [testLandMark, testLandMark])
    }
}
