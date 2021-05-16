//
//  MapView.swift
//  NationalParks
//
//  Created by Jonathan Clark on 5/16/21.
//  Copyright © 2021 Jonathan Clark. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(

           center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),

           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

       )
    
    var body: some View {
        if #available(iOS 14.0, *) {
            Map(coordinateRegion: $region)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
