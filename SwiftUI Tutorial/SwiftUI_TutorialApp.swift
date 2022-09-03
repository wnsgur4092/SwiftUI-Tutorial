//
//  SwiftUI_TutorialApp.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import SwiftUI

@main // @main -> identifies the app's entry point
struct SwiftUI_TutorialApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
