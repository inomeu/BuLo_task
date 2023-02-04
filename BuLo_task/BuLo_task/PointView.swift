//
//  PointView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/02.
//

import Foundation
import MapKit
import SwiftUI


struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID=UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
}


