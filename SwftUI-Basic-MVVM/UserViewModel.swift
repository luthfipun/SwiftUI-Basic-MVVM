//
//  UserViewModel.swift
//  SwftUI-Basic-MVVM
//
//  Created by Luthfi Abdul Azis on 30/04/20.
//

import Foundation

class UserViewModel: Identifiable {
    
    let id = UUID()
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var gender: String {
        return self.user.gender
    }
    
    var email: String {
        return self.user.email
    }
    
    var phone: String {
        return self.user.phone
    }
    
    var name: String {
        return "\(self.user.name.title). \(self.user.name.first) \(self.user.name.last)"
    }
}
