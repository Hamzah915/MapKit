//
//  DetailsView.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import SwiftUI
import CoreLocation

struct DetailsView: View {
    
    var place: Place
    
    var body: some View {
        VStack{
            Text("Name: \(place.name)")
            Text("Latitude: \(place.coordinate.latitude)")
            Text("Longitude: \(place.coordinate.longitude)")
        }
    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(place: Place)
//    }
//}
