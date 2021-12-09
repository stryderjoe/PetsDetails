import SwiftUI
import Foundation


struct MainHome: View {
    
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    
    public let skyBlue = Color("skyBlue")
    
    
    @ObservedObject var viewModel = DataGrabberModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    
                    ForEach(viewModel.petinfo) { petinfo in
                        NavigationLink(destination: PetDetailsView(petData: petinfo, petInfoModel: viewModel)) {
                            
                            PetCard(petData: petinfo, petInfoModel: viewModel)
                            
                        }
                    }
                    
                }
            }
            .background(skyBlue)
            .edgesIgnoringSafeArea(.all)
        }
        .navigationTitle("filler")
    }
}
