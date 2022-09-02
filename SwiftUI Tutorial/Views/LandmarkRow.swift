//
//  LandmarkRow.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            
            LandmarkRow(landmark: landmarks[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
