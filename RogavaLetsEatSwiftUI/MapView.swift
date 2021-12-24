//
//  MapView.swift
//  RogavaLetsEatSwiftUI
//
//  Created by IMAC on 24.12.21.
//

// 41.7151
// 44.8271

// 42.360847
// 71.056819


import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    var lat: CLLocationDegrees
    var long: CLLocationDegrees
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
 
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
      
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(lat: 41.7151, long: 44.8271)
    }
}
