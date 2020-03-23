//
//  VideosPageViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/18/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

//Finish videos page

import UIKit

class VideosPageViewController: UIViewController {
    
    var tagHolder:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func btnVideo(_ sender: UIButton) {
        
        if(sender.tag != 0) {
            tagHolder = sender.tag
            performSegue(withIdentifier: "jumpVideoPageSub", sender: self)
            
        }
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "jumpVideoPageSub") {
            let destinationVC = segue.destination as! VideosPageSubViewController
            destinationVC.passedValue = tagHolder
        }
    }
    
}
