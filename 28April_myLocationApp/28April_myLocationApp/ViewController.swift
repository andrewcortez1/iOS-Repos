//
//  ViewController.swift
//  28April_myLocationApp
//
//  Created by IOS on 06/05/22.
//

import UIKit
import CoreLocation //location lib
import MapKit //map view lib

class ViewController: UIViewController, CLLocationManagerDelegate {
    var locationManager : CLLocationManager!
    @IBOutlet weak var label_latitude: UILabel!
    @IBOutlet weak var label_longitude: UILabel!
    @IBAction func updateLocation(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
    }
    
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        //authorization
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //obj location
    var location : CLLocation! {
        didSet{ //trigger ketika berubah valuenya, update to UI
            label_latitude.text = "\(location.coordinate.latitude)"
            label_longitude.text = "\(location.coordinate.longitude)"
            
            //gambaran mapCord, setelah kita dapat valuenya
            let mapCoord = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let Petra_location = CLLocationCoordinate2D(latitude: -7.33952, longitude: 112.73756)
            let latDelta : CLLocationDegrees = 0.01
            let lonDelta : CLLocationDegrees = 0.01
            let mapSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let mapRegion = MKCoordinateRegion(center : Petra_location, span: mapSpan)
            self.myMap.setRegion(mapRegion, animated: true)
            let anotasi = MKPointAnnotation()
            anotasi.title = "Location"
            anotasi.subtitle = "Your Location"
            anotasi.coordinate = Petra_location
            self.myMap.addAnnotations([anotasi])
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations : [CLLocation]){
        location = locations.last!
        //locationManager.stopUpdatingLocation() //stop gps request value
    }
}

//add permission : on info.plist (Inside Information)-> NSLocationWhenInUseUsageDescription
//cinfo.plist -> can be inspected in xml data
//lokasi decreased, always using location,
//view did appear, kalo dari segue lain, popup refresh pake ini
//query rapidAPI dapat dibuat dengan longitude, latitude
