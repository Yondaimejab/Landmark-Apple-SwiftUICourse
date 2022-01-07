//
//  HikeView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 4/1/21.
//

import SwiftUI

struct HikeView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: modelData.hikes[0], path: \.elevation).frame(width: 100, height: 100, alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(modelData.hikes[0].name).font(.headline)
                    Text("\(modelData.hikes[0].distance)")
                }
                
                Spacer()
                
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    Image("chevron.right.circle").imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                }
            }
            Spacer()
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView().environmentObject(ModelData())
    }
}
