//
//  CategoriesPageView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/28/20.
//

import SwiftUI

struct CategoriesPageView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.featuredCategories[0].image.resizable().aspectRatio(contentMode: .fill).frame(maxHeight: 200).clipped().listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { dictKey in
                    CategoryRowView(categoryName: dictKey, landmarkList: modelData.categories[dictKey] ?? []).padding()
                }.listRowInsets(EdgeInsets())
            }.navigationTitle("Featured")
        }
    }
}

struct CategoriesPageView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesPageView().environmentObject(ModelData())
    }
}
