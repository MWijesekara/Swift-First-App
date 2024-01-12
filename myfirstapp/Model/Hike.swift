//
//  Hike.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-12.
//

import Foundation

struct Hike:Codable,Identifiable,Hashable{
    
    var id: Int
        var name: String
        var distance: Double
        var difficulty: Int
        var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText:String{
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation:Codable,Hashable{
        var distanceFromStart : Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
