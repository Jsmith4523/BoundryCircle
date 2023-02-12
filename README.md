# BoundryCircle


<p float="left">
<img src="https://github.com/Jsmith4523/BoundryCircle/blob/main/BoundryCircle/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20-%202023-02-12%20at%2002.21.16.png?raw=true" width="200" /> 
  <img src="https://github.com/Jsmith4523/BoundryCircle/blob/main/BoundryCircle/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20-%202023-02-12%20at%2002.21.07.png?raw=true" width="200" />
</p>

Within SwiftUI and MapKit, I needed to include a feature within MapKit that would allow me to monitor if an annotation goes outside the bounds of a circle. There is no clear explaination online on how to achieve within an application. So, I discovered a method on how to make this possible within a SwiftUI application whilst providing a clear example of how to do such.

What was used:
- UIViewRepresentable in order to Use a MKMapView within a SwiftUI application.
- MKCircle and MKCircleOverlay to modify the MKCircle's appearance.
- Custom class that conforms to the MKAnnotation protocool in order to implement a method that compares the CLLocation from the draggable latitude and longtitude coordiantes from the MKCircle.
- VisibleMapRect to allow the MKMapView to fully display the MKCircle within the bounds of the device screen.
- MKMapViewDelegate to monitor the changes within the MKMapView.
- MKAnnotationView.State to monitor the new drag state of the MKAnnotationView for the draggale annotation.

What I learned:
- How powerful MKMapViewDelegate is with a MKMapView and coordinator class.
- Further understanding how to implement UIKIt and other non-SwiftUI frameworks within a SwiftUI application.
- The importants of extensions and how they can be used within a class to organize delegate methods.

