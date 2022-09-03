//
//  CateogoryHome.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 3/9/2022.
//

import SwiftUI

struct CateogoryHome: View {
    @EnvironmentObject var modelData : ModelData
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height :200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CateogoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CateogoryHome().environmentObject(ModelData())
    }
}
