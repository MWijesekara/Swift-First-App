//
//  CircleImage.swift
//  myfirstapp
//
//  Created by Menura Wijesekara on 2024-01-10.
//

import SwiftUI

struct CircleImage: View {

    var image:Image
    
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
