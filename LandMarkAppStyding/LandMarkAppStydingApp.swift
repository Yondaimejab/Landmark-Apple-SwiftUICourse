//
//  LandMarkAppStydingApp.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

@main
struct LandMarkAppStydingApp: App {
    @StateObject private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
