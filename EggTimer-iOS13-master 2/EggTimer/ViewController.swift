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
    
    let waktuRebus = ["Soft": 3, "Medium": 5, "Hard": 10] //dictionary conversion
    var tick = 0
    var timer = Timer()
    var lama = 0
    var selesai = true //cara agar tombol lain tidak tertekan lagi, saat dibuat
    var totalWaktu = 0.0
    var player: AVAudioPlayer!
    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var labelTimer: UILabel!
    @IBAction func pilihan(_ sender: UIButton) {
        //print(sender.titleLabel?.text ?? "") //ngambil gambar telur yang soft/medium/hard
        //print(waktuRebus[sender.currentTitle ?? ""]!) //ngambil waktu rebus[soft/medium/hard]
        if selesai == true { //kalo selesai njalankan timernya
            timer.invalidate() //agar murni dari 0
            lama = waktuRebus[sender.currentTitle ?? ""]!  //ngambil waktu  rebusnya ke var lama
            totalWaktu = Double(lama)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            //1 timer dari objective C, kalo ada yang trigger function ditambahi obj-c
            //parameter: 1 detik, target: self, selector: fungsi yang dipanggil, userInfo : nil, repeats : true, selector diganti #selector(updateTIme) 

            selesai = false //selesai = false agar ndak bisa njalankan timer yang lain, harus ditambahi lagi selesai = true lagi untuk jalan lagi
        }
    }
    
    //2) update timer
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
            selesai = true //agar dapat jalan lagi, dibuat true lagi
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }

    //stop timer = with method invalidate, harus dijadikan object dulu
    // @obj func updateTimer(){
    //     print("\(tick)") //ngambil variable yang dibuat
    //     tick +=1 // nambahin detikan sudah keganti di xcodenya

    //     if tick == 5{
    //         timer.invalidate() //kalo sudah 5 ndak diprint lagi
    //     }
    // }

    //timer sesuai dengan waktunya, kacau kalo klik yang lain, caranya
    if (lama >0){
        print (lama)
        lama -=1
    }
    else{
        print("selesai")
        timer.invalidate
    }


}
