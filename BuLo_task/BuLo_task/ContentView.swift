//
//  ContentView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/02.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        MapView(place: IdentifiablePlace(lat: 37.334_900, long: -122.009_020))
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

