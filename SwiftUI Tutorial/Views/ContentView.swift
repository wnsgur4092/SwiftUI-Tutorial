//
//  ContentView.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
