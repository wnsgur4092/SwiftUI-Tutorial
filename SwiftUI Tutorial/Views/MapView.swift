//
//  MapView.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordiante : CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordiante)
            }
    }
    
    private func setRegion(_ coordinate : CLLocationCoordinate2D) {
        region = MKCoordinateRegion (center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordiante: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
