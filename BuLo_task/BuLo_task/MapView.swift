//
//  MapView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/04.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D?
    var latitude: Double
    var longitude: Double
    
    @State var userTrackingMode:  MapUserTrackingMode = .none
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.789656, longitude: 140.751924),
                                                   latitudinalMeters: 900,longitudinalMeters: 900)
    
    var body: some View {
        Map(coordinateRegion: $region,
            interactionModes: .all,
            showsUserLocation: true,
            userTrackingMode: $userTrackingMode,
            annotationItems: [
                placeList(coordinate: .init(latitude: latitude, longitude: longitude))
            ],annotationContent: { item in
                MapMarker(coordinate: item.coordinate)
            })
    }
    
    struct placeList: Identifiable{
        let id = UUID()
        let coordinate: CLLocationCoordinate2D
    }


        struct MapView_Previews: PreviewProvider {
            static var previews: some View {
                MapView(latitude: 41.789504, longitude: 140.751912)//シエスタ
            }
        }
    }

