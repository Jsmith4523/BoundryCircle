//
//  DragAnnotation.swift
//  BoundryCircle
//
//  Created by Jaylen Smith on 2/12/23.
//

import Foundation
import UIKit
import MapKit

final class DragAnnotation: NSObject, MKAnnotation {
    var title: String?
    var location: CLLocation!
    var coordinate: CLLocationCoordinate2D {
        didSet {
            self.location = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
        }
    }
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        self.title      = title
        self.coordinate = coordinate
    }
    
    func isOutOfBounds(from circle: MKCircle) -> Bool {
        let cirlceLocation = CLLocation(latitude: circle.coordinate.latitude, longitude: circle.coordinate.longitude)
        
        if let location {
            return location.distance(from: cirlceLocation) > circle.radius
        }
        
        return false
    }
}
