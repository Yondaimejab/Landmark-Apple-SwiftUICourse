//
//  LandmarkDescriptionView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandmarkDescriptionView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("About \(landmark.name)").font(.title).bold()
            Text(landmark.description)
            HStack{Spacer()}
        }.padding(.all, 10)
    }
}

struct LandmarkDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDescriptionView(landmark: testLandMark)
    }
}
