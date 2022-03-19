//
//  ViewController.swift
//  tebak_square
//
//  Created by IOS on 17/03/22.
//

//var clicked = "outlet0" + sender.titleLabel!.text!
//changeMerah(x: UIButton(sender.titleLabel!.text))

//    func allmerah(){
      //for i in 1...25{
       //            arrayName[i] = "outlet"+String(i)
       //        }
       //
       //        for i in 1...25{
       //            changeMerah(x: UIButton(named : arrayName[i] ))
       //        }    }
    
    //maaf pak, kurang singkat , nyoba ui button named //outlet01, not find

import UIKit

class ViewController: UIViewController {
    
    func changeMerah(x : UIButton){
        x.backgroundColor = UIColor.red
        x.tintColor = UIColor.red
    }
    
    func remainingGuess(x : UILabel, val : String){
        x.text = val
    }

    let jawaban = Int.random(in: 1...25)

    @IBOutlet weak var labelvalue: UILabel!
    
    @IBOutlet weak var outlet01: UIButton!
    @IBOutlet weak var outlet02: UIButton!
    @IBOutlet weak var outlet03: UIButton!
    @IBOutlet weak var outlet04: UIButton!
    @IBOutlet weak var outlet05: UIButton!
    
    @IBOutlet weak var outlet06: UIButton!
    @IBOutlet weak var outlet07: UIButton!
    @IBOutlet weak var outlet08: UIButton!
   
    @IBOutlet weak var outlet09: UIButton!
    @IBOutlet weak var outlet10: UIButton!
    
    @IBOutlet weak var outlet11: UIButton!
    @IBOutlet weak var outlet12: UIButton!
    @IBOutlet weak var outlet13: UIButton!
    @IBOutlet weak var outlet14: UIButton!
    @IBOutlet weak var outlet15: UIButton!
    
    @IBOutlet weak var outlet16: UIButton!
    @IBOutlet weak var outlet17: UIButton!
    @IBOutlet weak var outlet18: UIButton!
    @IBOutlet weak var outlet19: UIButton!
    @IBOutlet weak var outlet20: UIButton!
    
    @IBOutlet weak var outlet21: UIButton!
    @IBOutlet weak var outlet22: UIButton!
    @IBOutlet weak var outlet23: UIButton!
    @IBOutlet weak var outlet24: UIButton!
    @IBOutlet weak var outlet25: UIButton!
    
    //changeMerah(x: UIButton! (named : sender.titleLabel!.text))
    @IBAction func button01(_ sender: UIButton) {
        changeMerah(x: outlet01)
        remainingGuess(x: labelvalue, val: "asdqwe")
    }
    @IBAction func button02(_ sender: UIButton) {
        changeMerah(x: outlet02)
    }
    @IBAction func button03(_ sender: UIButton) {
        changeMerah(x: outlet03)
    }
    @IBAction func button04(_ sender: UIButton) {
        changeMerah(x: outlet04)
        
    }
    @IBAction func button05(_ sender: UIButton) { changeMerah(x: outlet05)}
    @IBAction func button06(_ sender: UIButton) {
    }
    @IBAction func button07(_ sender: UIButton) {
    }
    @IBAction func button08(_ sender: UIButton) {
    }
    @IBAction func button09(_ sender: UIButton) {
    }
    @IBAction func button10(_ sender: UIButton) {
    }
    
    @IBAction func button11(_ sender: UIButton) {
    }
    @IBAction func button12(_ sender: UIButton) {
    }
    @IBAction func button13(_ sender: UIButton) {
    }
    @IBAction func button14(_ sender: UIButton) {
    }
    @IBAction func button15(_ sender: UIButton) {
    }
    
    @IBAction func button16(_ sender: UIButton) {
    }
    @IBAction func button17(_ sender: UIButton) {
    }
    @IBAction func button18(_ sender: UIButton) {
    }
    @IBAction func button19(_ sender: UIButton) {
    }
    @IBAction func button20(_ sender: UIButton) {
    }
    
    
    @IBAction func button21(_ sender: UIButton) {
    }
    @IBAction func button22(_ sender: UIButton) {
    }
    @IBAction func button23(_ sender: UIButton) {
    }
    @IBAction func button24(_ sender: UIButton) {
    }
    @IBAction func button25(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

