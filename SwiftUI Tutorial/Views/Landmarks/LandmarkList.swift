//
//  LandmarkList.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            //Landmark.swift -> Landmark : Identifable (which includes ID)
            //No more need to (landmarks, id :\.id) -> (landmarks)
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite Only")
                }
                ForEach(filteredLandmarks)  { item in
                    NavigationLink{
                        LandmarkDetail(landmark: item)
                    } label: {
                        LandmarkRow(landmark: item)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}



struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max", "iPad Pro (9.7-inch)"], id: \.self){
        //            deviceName in LandmarkList()
        //                .previewDevice(PreviewDevice(rawValue: deviceName))
        ////                .previewDisplayName(deviceName)
        //
        //        }
        LandmarkList()
            .environmentObject(ModelData())
    }
}