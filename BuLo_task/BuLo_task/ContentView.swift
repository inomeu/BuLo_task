//
//  ContentView.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/02.
//

import SwiftUI
import MapKit

struct ContentView: View {
    //現在地取得でやるなら @State private var region = MKCoordinateRegion()でもできる（座標置いたらそこが現在地offの時の場所になる）
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334900, longitude: -122.009020) , span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))
    
    var body:some View {
        Map(coordinateRegion: $region,
            //Mapの操作指定（.all=.panと.zoom,.pan=スワイプでの移動の許可,.zoom=拡大、縮小,[]=タッチ操作を受け付けない、ただし現在地取得の時は.zoom)
            interactionModes: .zoom,
            //現在地の表示(boolean)
            showsUserLocation: true,
            //現在地の追従(追従許可=.follow,追従許可しない=.none)
            userTrackingMode:  .constant(MapUserTrackingMode.follow)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
