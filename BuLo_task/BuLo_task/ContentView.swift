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
        MapView(latitude: 41.789504, longitude: 140.751912)//シエスタ
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

