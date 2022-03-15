//
//  ViewController.swift
//  HGCE OTG
//
//  Created by Mayank Vadaliya on 22/06/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit
import MapKit


class SchoolAnnotation: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate : CLLocationCoordinate2D ,title : String, subtitle : String){
        
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        
        super.init()
    }
    
    
}


class ViewController: BaseViewController {

    @IBOutlet weak var mappin: MKMapView!
      let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        
        mappin.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        let mitcoordinate  = CLLocationCoordinate2DMake(23.084676, 72.758163)
        
        let mitAnnotation = SchoolAnnotation(coordinate: mitcoordinate, title: "HGCE", subtitle: "INDIA")
        
        mappin.addAnnotation(mitAnnotation)
        
        mappin.mapType = MKMapType.standard
        
        // 3)
        let span = MKCoordinateSpan(latitudeDelta: 0.75, longitudeDelta: 0.75)
        //  let region = MKCoordinateRegion(center: location, span: span)
        //  mapview.setRegion(region, animated: true)
        
        // 4)
        let annotation = MKPointAnnotation()
        
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.delegate = self as? CLLocationManagerDelegate
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()   }
        // Do any additional setup after loading the view.
    }


}

