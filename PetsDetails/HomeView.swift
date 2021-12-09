import SwiftUI
import Foundation


struct MainHome: View {
  
  private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
  
  @ObservedObject var viewModel = DataGrabberModel()
  
  var body: some View {
    NavigationView {
        SearchBar()
        ScrollView {
      
           ForEach(viewModel.petinfo) { petinfo in
                        NavigationLink(destination: WikiRoleDetails(wikiRoleData: wikiroles, roleViewModel: viewModel)) {
                            
                            RoleCard(wikiRoleData: wikiroles, roleViewModel: viewModel)
                            
                        }
                    }
          
      }
    }
  }
}
