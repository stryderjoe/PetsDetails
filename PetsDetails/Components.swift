//
//  Components.swift
//  PetsDetails
//
//  Created by PMStudent on 12/8/21.
//

import SwiftUI

struct Components: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}



struct PetCard: View {
    
    let petData: PetData
    
    init(petData: PetData) {
        self.petData = petData
    }
    
    var body: some View {
        
        HStack {
            
           Image("pddog")
            .resizable()
            .frame(width: 120, height: 120)
            .clipshape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
            VStack(alignment: .leading, content: {
                
                HStack(spacing: 15) {
                Text("name")
                    .fontWeight(.heavy)
                Text("date")
                    .foregroundColor(.gray)
                    .opacity(0.8)
                }
                
                Text("location")
                
            })
            
        }
    }
}

struct Components_Previews: PreviewProvider {
    static var previews: some View {
        Components()
    }
}
