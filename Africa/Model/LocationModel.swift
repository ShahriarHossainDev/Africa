//
//  LocationModel.swift
//  Africa
//
//  Created by Shishir_Mac on 5/6/22.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable{
    var id: String
    var name: String
    var image:String
    var latitude : Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
