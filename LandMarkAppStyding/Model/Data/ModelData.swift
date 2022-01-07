//
//  ModelData.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var featuredCategories : [Landmark] {
        return landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        return Dictionary(grouping: landmarks, by: { $0.category.rawValue })
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {fatalError("Couldn't find the requested file in the main bundle")}
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("couldn't load \(filename) from main bundle \(error.localizedDescription)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("decodding process failed \(error.localizedDescription)")
    }
}
