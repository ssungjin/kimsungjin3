//
//  ViewController.swift
//  simpleGeocoding02
//
//  Created by D7703_04 on 2019. 10. 14..
//  Copyright © 2019년 Y. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var pins = [MKPointAnnotation]()
//      let addr = "부산광역시 부산진구 양정동 429-19"
        let lat = 35.16587040
        let lng = 129.07284610
        let loc = CLLocation(latitude: lat, longitude: lng)
        
        let geocoder = CLGeocoder()
        
        geocoder.reverseGeocodeLocation(loc, completionHandler: {(placemarks:[CLPlacemark]?, error: Error?) in
            if error != nil {
                print("Unable to Reverse Geocodin Location \(error!)")
            }
            
            if let myPlacemark = placemarks {
                let placemark = myPlacemark[0]
                print(placemark.administrativeArea ?? "empty")
            }
        })
    }
        
      
//        geocoder.geocodeAddressString(addr, completionHandler: {
//            (placemarks: [CLPlacemark]?, error: Error?) in
//
//            if error != nil {
//                print(error!)
//            }
            // optional binding check (옵티널 바인딩 체크)
//            if let myPlacemarks = placemarks {
//                let myPlacemark = myPlacemarks.first
//
//                print(myPlacemark?.location?.coordinate.latitude)
//                print(myPlacemark?.country)
                //
                // pin 꼽기
              //  let pin = MKPointAnnotation()
              //  pin.coordinate = (myPlacemark?.location!.coordinate)!
             //   pin.title = "동의과학대학교"
             //   pin.subtitle = "우리들의 꿈이 자라는 곳"
             //   pins.append(pin)
            //  self.mapView.showAnnotations(pins, animated: true)
          //  } else {
          //      print("nil 발생")
//           }
//        })
//    }
//}
// 후행 클로져(trailing closure)
//geocoder.geocodeAddressString(addr) { placemarks, error in
    
//    if error != nil {
//        print(error!)
 //   }
    // optional binding check (옵티널 바인딩 체크)
//    if let myPlacemarks = placemarks {
//        let myPlacemark = myPlacemarks.first
//
 //       print(myPlacemark?.location?.coordinate.latitude)
 //       print(myPlacemark?.country)
        
        // pin 꼽기
//        let pin = MKPointAnnotation()
 //       pin.coordinate = (myPlacemark?.location!.coordinate)!
//        pin.title = "동의과학대학교"
 //       pin.subtitle = "우리들의 꿈이 자라는 곳"
 //       pins.append(pin)
//        self.mapView.showAnnotations(pins, animated: true)
//    } else {
 //       print("nil 발생")
//    }
//}
//}
//}
}
