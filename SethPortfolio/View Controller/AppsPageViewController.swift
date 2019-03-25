//
//  AppsPageViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/25/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class AppsPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnNavigation(_ sender: UIButton) {
        
        switch (sender.tag) {
        case 1:
            performSegue(withIdentifier: "jumpDiceePage", sender: self)
        default:
            print("no World")
            
        }
    }
    
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
