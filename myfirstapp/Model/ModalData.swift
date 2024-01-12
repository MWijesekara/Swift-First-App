//
//  ModalData.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-10.
//

import Foundation

@Observable
class ModelData{
    var landmarks : [myfirstappstruct] = load("landmarkData.json")
    var hikes : [Hike] = load("hikeData.json")
}


func load<T: Decodable>(_ filename:String) -> T{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension:nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("couldn't parse \(filename) as \(T.self):\n\(error) ")
    }
}
