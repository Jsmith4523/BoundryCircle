//
//  ContentView.swift
//  BoundryCircle
//
//  Created by Jaylen Smith on 2/12/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @StateObject private var mapVM = MapViewModel()
    
    var body: some View {
        ZStack {
            MKMapRep(mapVM: mapVM)
                .ignoresSafeArea()
        }
        .alert("Out of Bounds!!", isPresented: $mapVM.alertOutOfBounds) {
            Button("OK") {}
        } message: {
            Text("You are out of bounds from the circle!!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
