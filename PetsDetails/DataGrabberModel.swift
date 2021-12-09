import SwiftUI
import Foundation

class DataGrabberModel: ObservableObject {
    
    @Published var petinfo = [PetData]()
    
    let apiURL =
    "https://firebasestorage.googleapis.com/v0/b/pet-filler.appspot.com/o/fixedDatabase.json?alt=media&token=dbc8c494-c27c-4750-8928-c70c1beccdef"
    
    init() {
        fetchPetData()
    }
    
    func fetchPetData() {
        guard let url = URL(string: apiURL) else { return }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else { return }
            
            DispatchQueue.main.async {
                do {
                    let petinfo = try JSONDecoder().decode([PetData].self, from: cleanData)
                    self.petinfo = petinfo
                } catch {
                    print("error msg:",error)
                }
            }
        }
        task.resume()
    }
}



extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?
            .replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else {
            return nil }
        
        return data
    }
}
