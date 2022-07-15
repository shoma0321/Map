//
//  ViewController.swift
//  Map
//
//  Created by 伊藤 奨真 on 2022/07/15.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segumentControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var region = MKCoordinateRegion()//地図の領域を表す構造体
        region.center = CLLocationCoordinate2DMake(35.65861, 139.745556)//地図の緯度と経度
        region.span.latitudeDelta = 0.02//表示範囲
        region.span.longitudeDelta = 0.02
        mapView.setRegion(region, animated: false)
        
        mapView.mapType = .standard//列挙型
    }


    @IBAction func segumentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }
    
}

