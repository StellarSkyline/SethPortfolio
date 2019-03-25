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
        case 2:
            performSegue(withIdentifier: "jumpXylophonePage", sender: self)
        default:
            print("No Tag")
            
        }
    }
    
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
