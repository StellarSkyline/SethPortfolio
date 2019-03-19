//
//  VideosPageSubViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/18/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit
import WebKit

class VideosPageSubViewController: UIViewController {
    
    var passedValue:Int = 0
    @IBOutlet weak var myWebKit: WKWebView!
    let myVideoModel:VideoModel = VideoModel()
    @IBOutlet weak var clientLabel: UILabel!
    @IBOutlet weak var txtField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVideo(videoID:myVideoModel.urlArray[passedValue])
        clientLabel.text = myVideoModel.clientArray[passedValue]
        txtField.text = "Client: " + myVideoModel.descriptionArray[passedValue]
        
    }

    
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func getVideo(videoID:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoID)")
        myWebKit.load(URLRequest(url:url!))
    }
    

}
