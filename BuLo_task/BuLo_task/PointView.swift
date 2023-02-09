//
//  PointView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/02.
//

import Foundation
import MapKit
import SwiftUI


struct Place: Identifiable {
    let id = UUID()
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: latitude)
    }
    }
let placeList = [Place(latitude: 41.789504, longitude: 140.751912)]//シエスタハコダテ



