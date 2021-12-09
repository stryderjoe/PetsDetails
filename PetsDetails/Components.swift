//
//  Components.swift
//  PetsDetails
//
//  Created by PMStudent on 12/8/21.
//

import SwiftUI
import Kingfisher

struct Components: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}



struct PetCard: View {
    
    public let skyBlue = Color("skyBlue")
    public let lightGray = Color("lightGray")
    let petData: PetData
    let petInfoModel: DataGrabberModel
    
    init(petData: PetData, petInfoModel: DataGrabberModel) {
        self.petData = petData
        self.petInfoModel = petInfoModel
    }
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width - 15, height: 90)
            
            HStack(spacing: 15) {
                
                KFImage(URL(string: petData.imageURL))
                    .resizable()
                    .frame(width: 75, height: 75)
                    .padding(10)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, content: {
                    
                    HStack(spacing: 15) {
                        Text(petData.name.capitalized)
                            .bold()
                            .foregroundColor(.black)
                        Text(petData.breed.capitalized)
                            .foregroundColor(.gray)
                            .opacity(0.8)
                    }
                    
                    Text(petData.location.capitalized)
                        .foregroundColor(.black)
                    
                })
                
            }
            .frame(width: UIScreen.main.bounds.width - 25, height: 90, alignment: .leading)
        }
        .background(skyBlue)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, 5)
    }
}

struct Components_Previews: PreviewProvider {
    static var previews: some View {
        Components()
    }
}
