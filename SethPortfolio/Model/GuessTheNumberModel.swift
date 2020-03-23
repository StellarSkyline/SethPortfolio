//
//  GuessTheNumberModel.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/31/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import Foundation
import UIKit

class Game {
    //Private variables encapsulated
    private var Score:Int
    private var Attempts:Int
    private var RandomNum:Int
    private var UserInput:Int
    private var hint:String
    
    //Constructor
    init() {
        self.Score = 100
        self.Attempts = 5
        self.RandomNum = Int(arc4random_uniform(20) + 1)
        self.UserInput = 0
        self.hint = " "
    }
    
    //Setters
    func setScore (scoreIN: Int) {
        Score = scoreIN
    }
    
    func setUserInput(inputIN:Int) {
        UserInput = inputIN
    }
    
    //Getters
    
    func getScore() -> Int {
        return self.Score
    }
    
    func getAttempts() -> Int {
        return self.Attempts
    }
    
    func getUserInput() -> Int {
        return self.UserInput
    }
    
    func getHints() -> String {
        return self.hint
    }
    
    func getRandomNum() -> Int {
        return self.RandomNum
    }
    
    //Compare userInput and random Number
    
    func compareNum() -> String {
        if(UserInput > RandomNum) {
            hint = "You guessed too HIGH"
            Attempts = Attempts - 1
            Score = Score - 25
        }
        else if (UserInput < RandomNum) {
            hint = "You guessed too LOW"
            Score = Score - 25
            
        }
        else if (UserInput == RandomNum) {
            hint = "You guessed RIGHT"
        }
        
        return self.hint
        
    }
    
    
    //Reset Game
    func resetGame() {
        self.Score = 100
        self.Attempts = 5
        self.RandomNum = Int(arc4random_uniform(20) + 1)
        self.UserInput = 0
        self.hint = " "
    }

}
