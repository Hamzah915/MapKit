//
//  ContentView.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @StateObject var locationManagerVM = LocationManagerViewModel()
    
    @State var staticRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5014, longitude: -0.1419), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var region: Binding<MKCoordinateRegion>? {
        guard let currentLocation = locationManagerVM.currentLocation else {
            return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5014, longitude: -0.1419), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)).getBinding()
        }
        let region = MKCoordinateRegion(center: currentLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        return region.getBinding()
    }
    
    var body: some View {
        NavigationStack{
            VStack {
                if let currentRegion = region {
                    
                    Map(coordinateRegion: currentRegion, annotationItems: [Place(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.5014, longitude: -0.1419))]) { pin in
                        
                        MapAnnotation(coordinate: pin.coordinate) {
                            NavigationLink {
                                DetailsView(place: pin)
                            } label: {
                                MapPin(title: pin.name)
                            }
                        }
                    }
                }
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
