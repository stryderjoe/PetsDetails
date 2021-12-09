//
//  PetContentView.swift
//  PetsDetails
//
//  Created by PMStudent on 11/16/21.
//

import SwiftUI
import Foundation
import Kingfisher

struct PetDetailsView: View {
    
    let petData: PetData
    let petInfoModel: DataGrabberModel
    
    init(petData: PetData, petInfoModel: DataGrabberModel) {
        self.petData = petData
        self.petInfoModel = petInfoModel
    }
    
    
    public let skyBlue = Color("skyBlue")
    public let lightGray = Color("lightGray")
    
    var body: some View {
        ScrollView {
            VStack {
                KFImage(URL(string: petData.imageURL))  //Main pet pic
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .zIndex(1)
                    .offset(y: 65)
                VStack(alignment: .center) {
                    VStack(spacing: 5) {
                        
                        Text(petData.name.capitalized)    //Pet name
                            .font(.title)
                            .bold()
                            .padding(.bottom, 15)
                            .padding(.top, 65)
                        
                        CustomDivider()
                        
                        VStack(spacing: 15) {
                            
                            HStack(alignment: .center, spacing: 85) {
                                
                                
                                
                                
                                VStack(spacing: 12) {
                                    
                                    Text("Date Lost")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text("fix the json")
                                        .font(.title3)
                                        .padding(.bottom, 20)
                                    ///
                                    Text("Breed")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text(petData.breed.capitalized)
                                        .font(.title3)
                                        .padding(.bottom, 20)
                                    ///
                                    Text("Size")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text(petData.size.capitalized)
                                        .font(.title3)
                                        .padding(.bottom, 5)
                                }
                                .fixedSize(horizontal: true, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)
                                
                                
                                
                                VStack(spacing: 12) {
                                
                                    Text("Last Seen")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text(petData.location.capitalized)
                                        .font(.title3)
                                        .padding(.bottom, 20)
                                    ///
                                    Text("Color")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text(petData.color.capitalized)
                                        .font(.title3)
                                        .padding(.bottom, 20)
                                    ///
                                    Text("Age")
                                        .font(.title3)
                                        .bold()
                                    
                                    Text(petData.age.capitalized)
                                        .font(.title3)
                                        .padding(.bottom, 5)
                                }
                                .fixedSize(horizontal: true, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)
                            }
                            
                            CustomDivider()
                            
                            Text("Notes")
                                .font(.title3)
                                .bold()
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget semper tortor, in varius lorem. Etiam diam turpis, semper nec erat id, scelerisque hendrerit sapien. Nam dolor quam, tempor eu finibus eget, mollis et sem. Mauris vel ultricies metus. Aliquam id ultricies est. Aliquam consequat dictum hendrerit. Nunc convallidasdsadasdasdasdasdsdsadsadsdsdsadsdassaddassadsdsdsdasdasadsadsdasdasdaasdsdasdasdasdasdasdasdsads mauris eros, in condimentum sapien sollicitudin vel. Vivamus tincidunt scelerisque pulvinar. Vivamus ornare et quam et placerat.")
                                .padding(.bottom, 15)
                                .multilineTextAlignment(.center)
                                .frame(width: 375, height: .infinity, alignment: .center)
                            
                        }
                        
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(50.0)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
        .background(skyBlue)
    }
}



struct CustomDivider: View {
    public let lightGray = Color("lightGray")
    let width: CGFloat = 1.5
    var body: some View {
        Rectangle()
            .fill(lightGray)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
            .padding(.top, 5)
            .padding(.bottom, 5)
    }
}



//struct PetDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PetDetailsView(petData: petinfo, petInfoModel: DataGrabberModel)
//    }
//}
