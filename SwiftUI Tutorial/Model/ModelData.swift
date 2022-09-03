//
//  ModelData.swift
//  SwiftUI Tutorial
//
//  Created by JunHyuk Lim on 2/9/2022.
//

import Foundation
import Combine

final class ModelData : ObservableObject{
    @Published  var landmarks : [Landmark] = load("landmarkData.json")
    
    var categories : [String : [Landmark]] {
        Dictionary(
            grouping: landmarks, by: {$0.category.rawValue}
        )
    }
    
    var features : [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
}

func load<T:Decodable>(_ filename : String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) is main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle : \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self) : \(error)")
    }
}
