//
//  MapView.swift
//  Africa
//
//  Created by why_me on 23.03.24.
//

import MapKit
import SwiftUI

struct MapView: View {
    // MARK: - PROPERTIES

    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

        return mapRegion
    }()

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    // MARK: - BODY

    var body: some View {
        // MARK: - No1 BASIC MAP

//                Map(coordinateRegion: $region)

        // MARK: - No2 ADVANCED MAP

        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
//            // (A) Marker: (always static)
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }

        }) //: Map
        .overlay(
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }//: HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
            
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
