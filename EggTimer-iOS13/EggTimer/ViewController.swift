//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondsPassed = 0
       
    @IBAction func HardnessSelected(_ sender: UIButton) {
           
        timer.invalidate()
        let hardness = sender.currentTitle
        totalTime = eggTimes[hardness!]!
        
        progressBar.progress = 0
        secondsPassed = 0
        titleLabel.text = hardness
           
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
           
    }
    
    @objc func updateTimer() {
        if  secondsPassed < totalTime {
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
        } else{
            timer.invalidate()
            titleLabel.text = "Done!"
            playSound("alarm_sound")
        }
    }
    func playSound(_ soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
