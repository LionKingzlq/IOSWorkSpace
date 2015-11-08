//
//  ViewController.swift
//  Location
//
//  Created by Abraham on 11/8/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{

    var locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 100
        
        locationManager.requestAlwaysAuthorization()
//        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            switch CLLocationManager.authorizationStatus(){
            case .AuthorizedAlways:
                createLocationManager(true)
            case .AuthorizedWhenInUse:
                createLocationManager(true)
            case .Denied:
                createLocationManager(false)
            default:
                print("unhandle")
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createLocationManager(startImediateLy:Bool){
        locationManager.startUpdatingLocation()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations[0].altitude)
    }

    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error)
    }
    
}

