//
//  MapPin.swift
//  MapKitSwift
//
//  Created by Hamzah Azam on 10/05/2023.
//

import SwiftUI

struct MapPin: View {
    var title: String
        
        var body: some View {
            VStack{
                
                Text(title)
                    .font(.callout)
                    .background(.white)
                
                Image(systemName: "mappin.circle.fill")
                    .font(.title)
                    .foregroundColor(.red)
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.caption2)
                    .foregroundColor(.red)
                    .offset(x: 0, y: -5)
                
            }
        }

}

struct MapPin_Previews: PreviewProvider {
    static var previews: some View {
        MapPin(title: "Buckingham Palace")
    }
}
