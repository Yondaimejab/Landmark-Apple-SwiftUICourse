//
//  CategoryItemView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/29/20.
//

import SwiftUI

struct CategoryItemView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image.renderingMode(.original).resizable().frame(width: 155, height: 155).cornerRadius(5)
            Text(landmark.name).foregroundColor(.primary).font(.caption)
        }.padding(.leading, 15)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(landmark: testLandMark)
    }
}
