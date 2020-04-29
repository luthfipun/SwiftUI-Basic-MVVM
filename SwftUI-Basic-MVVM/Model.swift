//
//  Model.swift
//  SwftUI-Basic-MVVM
//
//  Created by Luthfi Abdul Azis on 30/04/20.
//

import Foundation

struct UserResponse: Codable {
    let results: [User]
}

struct User: Codable {
    let gender: String
    let email: String
    let phone: String
    let name: Names
}

struct Names: Codable {
    let title: String
    let first: String
    let last: String
}
