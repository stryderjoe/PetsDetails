import SwiftUI
import Foundation

class RoleViewModel: ObservableObject {
    
    @Published var wikiroles = [WikiRoleData]()
    
    let apiURL =
    "https://firebasestorage.googleapis.com/v0/b/botc-companion.appspot.com/o/BOTC%20Wiki%20Database%20-%20Sheet1.json?alt=media&token=79f2d67b-e835-49f2-bd94-0c80c5383a20"
    
    init() {
        fetchWikiRolesData()
    }
    
    func fetchWikiRolesData() {
        guard let url = URL(string: apiURL) else { return }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else { return }
            
            DispatchQueue.main.async {
                do {
                    let wikiroles = try JSONDecoder().decode([WikiRoleData].self, from: cleanData)
                    self.wikiroles = wikiroles
                } catch {
                    print("error msg:",error)
                }
            }
        }
        task.resume()
    }
 }
