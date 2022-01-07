//
//  Landmark.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int, name: String, park: String, state: String, description: String, imageName: String, isFavorite: Bool, category: Category, isFeatured: Bool) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.isFavorite = isFavorite
        self.category = category
        self.isFeatured = isFeatured
        coordinates = Coordinates(latitude: 34.011_286, longitude: -116.166_868)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    
    var locationFromCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var category: Category
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case montains = "Mountains"
    }
}


var testLandMark: Landmark = {
    return Landmark(id: 1, name: "Turtle rock", park: "Joshua Prak", state: "California", description: "A great description of a great park", imageName: "turtlerock", isFavorite: true, category: .lakes, isFeatured: true)
}()
