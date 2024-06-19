//
//  LocationView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI
import MapKit

struct LocationAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct LocationView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 42.43923, longitude: -76.50933),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    let annotationCoordinate = LocationAnnotation(coordinate: CLLocationCoordinate2D(latitude: 42.43923, longitude: -76.50933))

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [annotationCoordinate]) { location in
            MapAnnotation(coordinate: location.coordinate) {
                Image("location_marker")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
