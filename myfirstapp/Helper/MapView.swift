//
//  MapView.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-10.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates : CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    }
}

#Preview {
    MapView(coordinates: CLLocationCoordinate2D(latitude:7.011_286 , longitude: 80.166_868 ))
}
