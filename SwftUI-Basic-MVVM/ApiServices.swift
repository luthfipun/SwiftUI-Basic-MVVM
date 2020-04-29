//
//  ApiServices.swift
//  SwftUI-Basic-MVVM
//
//  Created by Luthfi Abdul Azis on 30/04/20.
//

import Foundation

class ApiServices {
    
    func load(url: URL, completion: @escaping ([User]?) -> ()){
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(UserResponse.self, from: data)
            
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.results)
                }
            }
            
        }.resume()
    }
    
}
