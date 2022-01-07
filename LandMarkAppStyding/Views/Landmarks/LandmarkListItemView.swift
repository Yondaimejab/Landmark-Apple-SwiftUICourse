//
//  LandmarkListItemView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandmarkListItemView: View {
   var landmark: Landmark
    
    var body: some View {
        HStack(alignment: .center) {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name).font(.title)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }.padding(10).frame(maxHeight: 60)
    }
}

struct LandmarkListItemView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListItemView(landmark: ModelData().landmarks[0]).previewLayout(.sizeThatFits)
    }
}
