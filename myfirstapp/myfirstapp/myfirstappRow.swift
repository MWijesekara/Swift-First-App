//
//  myfirstappRow.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-10.
//

import SwiftUI

struct myfirstappRow: View {
    var landmark:myfirstappstruct
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
           Text(landmark.name)
        Spacer()
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return Group{
      myfirstappRow(landmark: landmarks[0])
        myfirstappRow(landmark: landmarks[1])
    }
   
}

    
