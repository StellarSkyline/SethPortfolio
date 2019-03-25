//
//  ViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/4/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //Button function for Navigation buttons in main View Controller
    @IBAction func btnNavigation(_ sender: UIButton) {
        switch (sender.tag) {
        case 1 :
            performSegue(withIdentifier: "jumpGraphicsPage", sender: self)
        case 2:
            performSegue(withIdentifier: "jumpAppsPage", sender: self)
        case 3:
            performSegue(withIdentifier: "jumpVideoPage", sender: self)
        case 4:
            performSegue(withIdentifier: "jumpAboutPage", sender: self)
        default:
            print("Error no Tags")
        }
        
    }
    
}

