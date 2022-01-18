//
//  User.swift
//  Travel Guides
//
//  Created by Sergey Efimov on 16.01.2022.
//

struct User {
    let name: String
    let password: String
    
    var isRegistered = false
    let favorite: Favorite
}
