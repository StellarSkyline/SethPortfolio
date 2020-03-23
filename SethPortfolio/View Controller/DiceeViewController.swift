//
//  DiceeViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/25/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit

class DiceeViewController: UIViewController {

    @IBOutlet weak var UIDice1: UIImageView!
    @IBOutlet weak var UIDice2: UIImageView!
    
    var randomDice1:Int = 0
    var randomDice2:Int = 0
    let diceArray:[String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnRoll(_ sender: Any) {
        RollDie()
        
    }
    
    func RollDie() {
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        UIDice1.image = UIImage(named: diceArray[randomDice1])
        UIDice2.image = UIImage(named: diceArray[randomDice2])
    }
    
    @IBAction func btnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            RollDie()
    }
    
}
