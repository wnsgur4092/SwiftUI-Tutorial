//
//  Landmark.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable, Identifiable {
    
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
//    var imageName : String
//    -> Image Name is not Jason. Therefore, transfer "name" to "imageName"
    
    var imageName : String
    
    var image : Image {
        Image(imageName)
    }

    struct Coordinates : Hashable, Codable {
        var latitude : Double
        var longitude : Double
    }
    
    private var coordinates : Coordinates
    
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    
}
