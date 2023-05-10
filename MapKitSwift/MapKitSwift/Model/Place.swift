//
//  Place.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import Foundation
import CoreLocation

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
