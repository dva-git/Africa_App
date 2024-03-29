//
//  LocationModel.swift
//  Africa
//
//  Created by why_me on 24.03.24.
//

import Foundation
import MapKit


struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
