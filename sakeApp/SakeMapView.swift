//
//  SakeMapView.swift
//  sakeApp
//
//  Created by 村田航希 on 2024/02/22.
//

import SwiftUI
import MapKit

struct SakeMapview: View {
    let sakes: [Sake] = dummySakes // ダミーデータを使用します
    
    var body: some View {
        MapView(sakes: sakes)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView: UIViewRepresentable {
    let sakes: [Sake]
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let annotations = sakes.map { sake -> MKPointAnnotation in
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: sake.latitude, longitude: sake.longitude)
            annotation.title = sake.name
            annotation.subtitle = sake.brewery
            return annotation
        }
        
        view.removeAnnotations(view.annotations)
        view.addAnnotations(annotations)
    }
}

