//
//  MapView.swift
//  Africa
//
//  Created by Shishir_Mac on 1/6/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - Body
    var body: some View {
        //Map(coordinateRegion: $region)
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            MapPin(coordinate: item.location, tint: .accentColor)
            
        })
        
    }
}

//MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
