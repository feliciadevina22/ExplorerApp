//
//  ExplorerAPI.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 04/05/21.
//

import Foundation

struct ExplorerAPI: Codable, Identifiable {
    let id = UUID()
    var Name: String
    var Photo: String
    var Team: String
    var Expertise: String
    var Shift: String
}

class Api {
    func getPost(completion: @escaping ([ExplorerAPI]) -> ()){
        guard let url = URL(string: "https://nc2.theideacompass.com/explorers-api.json") else { return }
    
        
        URLSession.shared.dataTask(with: url) { (data, _, _)  in
            let explorers = try! JSONDecoder().decode([ExplorerAPI].self, from: data!)
            print(explorers)
            
            DispatchQueue.main.async {
                completion(explorers)
            }
        }
        .resume()
    }
}


