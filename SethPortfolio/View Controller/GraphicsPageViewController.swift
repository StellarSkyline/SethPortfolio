//
//  GraphicsPageViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/7/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class GraphicsPageViewController: UIViewController {
    var tagHolder:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnArt(_ sender: UIButton) {
        if(sender.tag != 0) {
            tagHolder = sender.tag
            performSegue(withIdentifier: "jumpGraphicPageSub", sender: nil)
        }
        else {
            print("Error")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "jumpGraphicPageSub") {
            let destinationVC = segue.destination as! GraphicsPageSubViewController
            destinationVC.passedValue = tagHolder
            
        }
    }
    
    
}
