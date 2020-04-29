//
//  UserListViewModel.swift
//  SwftUI-Basic-MVVM
//
//  Created by Luthfi Abdul Azis on 30/04/20.
//

import Foundation


class UserListViewModel: ObservableObject {
    
    
    init() {
        fetchUserData()
    }
    
    @Published var users = [UserViewModel]()
    
    func fetchUserData() {
        
        guard let url = URL(string: "https://randomuser.me/api/") else {
            fatalError("URL NOT CONNECT")
        }
        
        ApiServices().load(url: url) { users in
            if let users = users {
                self.users = users.map(UserViewModel.init)
            }
        }
        
    }
}
