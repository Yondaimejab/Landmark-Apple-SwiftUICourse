//
//  ContentView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        if false {
            BadgeBackgroundView()
        } else {
            TabView {
                CategoriesPageView().tabItem {
                    Label("Featured", systemImage: "star")
                }.tag(Tab.featured)
                LandmarkListView().tabItem {
                    Label("List", systemImage: "list.bullet")
                }.tag(Tab.list)
                HikeView().tag("Hikes").tabItem {
                    Label("List", systemImage: "figure.walk")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
