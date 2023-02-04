//
//  MapView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/04.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.789656, longitude: 140.751924) ,
        latitudinalMeters: 900,
        longitudinalMeters: 900 )
    //                                                   span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
    
    let place : IdentifiablePlace
    
    var body:some View {
        Map(coordinateRegion: $region,
            interactionModes: .pan,
            showsUserLocation: false,
            annotationItems: [place])
        { place in MapMarker(coordinate: place.location, tint: Color.blue)
            //            MapAnnotation(coordinate: place.location) {
            //                Image(systemName: "tortoise.fill")
            //                    .foregroundColor(Color(UIColor.systemBackground))
            //                    .padding()
            //                    .background(Color.orange.cornerRadius(10))
        }
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(place: IdentifiablePlace(lat: 41.789656, long: 140.751924))
    }
}


