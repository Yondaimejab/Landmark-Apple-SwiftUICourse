//
//  LandMarkImageView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct LandMarkImageView: View {
    var image: Image
    
    var body: some View {
        image.clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 4)).shadow(radius: 7)
    }
}

struct LandMarkImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkImageView(image: ModelData().landmarks[0].image)
    }
}

