//
//  myfirstappDetalview.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-11.
//

import SwiftUI

struct myfirstappDetalview: View {
    @Environment(ModelData.self) var modelData
    var landmark : myfirstappstruct
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        VStack {
            MapView(coordinates: landmark.locationCoordinates)
                .frame(height: 300.0)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130.0)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.blue)
                Divider()
                Text("About \(landmark.name)")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                Text(landmark.description)
            }.padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return myfirstappDetalview(landmark:ModelData().landmarks[0])
        .environment(modelData)
}
