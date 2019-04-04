//
//  GuessTheNumberViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/31/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class GuessTheNumberViewController: UIViewController {
    
    //Supplementary Elements created at program start
    var inputString:String = "0"
    let myGame = Game()
    var guess:String = "Guessed Numbers: "

    @IBOutlet weak var labelHints: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelInput: UILabel!
    @IBOutlet weak var labelRandomNum: UILabel!
    @IBOutlet weak var labelGuess: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelScore.text = String(myGame.getScore())
    }
    
    @IBAction func btnNumbers(_ sender: UIButton) {
        let buttonValue:String? = sender.titleLabel?.text
        inputString = inputString.appending(buttonValue!)
        updateText()
    }
    
    @IBAction func btnInput(_ sender: Any) {
        
        myGame.compareNum()
        labelScore.text = String(myGame.getScore())
        
        if(myGame.getScore() > 0) {
            labelHints.text = myGame.getHints()
        }
        else if( myGame.getScore() == 0) {
            labelHints.text = "You Lose try again?"
            labelRandomNum.text = "The number was " + String(myGame.getRandomNum())
        }
        guess = guess + String(myGame.getUserInput())  + " "
        labelGuess.text = guess
        
        
        resetView()
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        resetView()
        labelHints.text = "Hints"
        myGame.resetGame()
        labelScore.text = String(myGame.getScore())
        guess = "Guessed Numbers: "
        labelGuess.text = " "
        labelRandomNum.text = " "
    }
    
    func resetView() {
        inputString = "0"
        labelInput.text = "0"
        btnDebugLabel.text = " "
        
    }
    
    func updateText() {
        guard let chkValue:Int = Int(inputString) else {return}
        myGame.setUserInput(inputIN: chkValue)
        labelInput.text = String(myGame.getUserInput())
    }
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var btnDebugLabel: UILabel!
    
    @IBAction func btnDebug(_ sender: Any) {
        btnDebugLabel.text = String(myGame.getRandomNum())
    }
    
}
