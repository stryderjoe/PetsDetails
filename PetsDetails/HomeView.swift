import SwiftUI
import Foundation


struct MainHome: View {
  
  private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
  
  @ObservedObject var viewModel = RoleViewModel()
  
  var body: some View {
    NavigationView {
        SearchBar()
        ScrollView {
      
           ForEach(viewModel.wikiroles) { wikiroles in
                        NavigationLink(destination: WikiRoleDetails(wikiRoleData: wikiroles, roleViewModel: viewModel)) {
                            
                            RoleCard(wikiRoleData: wikiroles, roleViewModel: viewModel)
                            
                        }
                    }
          
      }
    }
  }
}
