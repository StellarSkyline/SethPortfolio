//
//  GraphicsPageSubViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/7/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class GraphicsPageSubViewController: UIViewController {
    
    
    //Variables
    var passedValue:Int = 0
    @IBOutlet weak var imgArtView: UIImageView!
    let myGraphics = GraphicsModel()
    @IBOutlet weak var clientLabel: UILabel!
    @IBOutlet weak var txtDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(passedValue != 0) {
            imgArtView.image = UIImage(named:myGraphics.imgArray[passedValue])
            clientLabel.text = "Client: " + myGraphics.clientArray[passedValue]
            txtDescription.text = myGraphics.descriptionArray[passedValue]
        }
    }
    
    

    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
