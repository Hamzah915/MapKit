//
//  Users.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import Foundation

struct Users{
    let id: Int
    let name, username, email: String
    let address: Address
}

struct Address{
    let street, suite, city, zipcode: String
    let geo: Geo
}

struct Geo{
    let lat, lng: String
}
