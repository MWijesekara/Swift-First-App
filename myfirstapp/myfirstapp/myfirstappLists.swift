//
//  myfirstappLists.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-11.
//

import SwiftUI

struct myfirstappLists: View {
//    states are used to store data specific to one view only
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredlandmark: [myfirstappstruct]{
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView{
            
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredlandmark){landmark in
                    
                    NavigationLink {
                        myfirstappDetalview(landmark: landmark)
                    }
                label:{
                    myfirstappRow(landmark:landmark)
                }
            
                }
            }
        }
    detail:{
        Text("Select a Landmark")
    }
    }
}

#Preview {
    myfirstappLists().environment(ModelData())
}
