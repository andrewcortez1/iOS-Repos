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
    
    let waktuRebus = ["Soft": 3, "Medium": 5, "Hard": 10]
    var tick = 0
    var timer = Timer()
    var lama = 0
    var selesai = true
    var totalWaktu = 0.0
    var player: AVAudioPlayer!
    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var labelTimer: UILabel!
    @IBAction func pilihan(_ sender: UIButton) {
        //print(sender.titleLabel?.text ?? "")
        //print(waktuRebus[sender.currentTitle ?? ""]!)
        if selesai == true {
            timer.invalidate()
            lama = waktuRebus[sender.currentTitle ?? ""]!
            totalWaktu = Double(lama)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            selesai = false
        }
    }
    
    @objc func updateTimer() {
        if lama > 0 {
            //print(lama)
            labelTimer.text = String(lama)
            lama -= 1
            progress.progress = Float(1.0 - (Double(lama) / totalWaktu))
        } else {
            //print("selesai")
            labelTimer.text = "SELESAI"
            timer.invalidate()
            selesai = true
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    

}
