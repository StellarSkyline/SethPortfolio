//
//  XylophoneViewController.swift
//  SethPortfolio
//
//  Created by Seth Osric Torralba on 3/25/19.
//  Copyright © 2019 Seth Osric Torralba. All rights reserved.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController, AVAudioPlayerDelegate {
    
    let noteArray:[String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var soundFileName:String = " "
    var audioPlayer: AVAudioPlayer!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BtnNoteKeys(_ sender: UIButton) {
        soundFileName = noteArray[sender.tag]
        Playsound()
        
    }
    
    func Playsound() {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
    @IBAction func BtnDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
