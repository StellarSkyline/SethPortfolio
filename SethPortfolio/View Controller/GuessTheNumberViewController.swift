//
//  GuessTheNumberViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/30/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class GuessTheNumberViewController: UIViewController {
    @IBOutlet weak var labelGuessed: UILabel!
    @IBOutlet weak var labelHint: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelNumber: UILabel!
    
    var guessedNumber:Int = 0
    var randomNum:Int = 0
    var inputString:String = " "
    let myGame = Game()
    var guess:String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnNumbers(_ sender: UIButton) {
        let buttonValue:String? = sender.titleLabel?.text
        inputString = inputString.appending(buttonValue!)
        updateUI()
        
    }
   
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnEnter(_ sender: Any) {
        guard let chkValue: Int = Int(inputString) else {return}
        myGame.setUserInput(inputIN: chkValue)
        labelGuessed.text = String(myGame.getUserInput())
    }
    
    func updateUI() {
        labelNumber.text = inputString
        
        
    }
    
    
    
    
}
