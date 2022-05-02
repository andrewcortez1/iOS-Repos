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
//source logo : freelogodesign.org

import UIKit

class ViewController: UIViewController {
    
    func changeWarna(stat : String, x : UIButton , label : UILabel, message : String){
        if (stat == "salah"){
            x.backgroundColor = UIColor.red
            x.tintColor = UIColor.red
        }
        else if (stat == "grey"){
            x.backgroundColor = UIColor.gray
            x.tintColor = UIColor.gray
        }
        else if (stat == "reset"){
            x.backgroundColor = UIColor.black
            x.tintColor = UIColor.black
        }
        else{
            x.backgroundColor = UIColor.green
            x.tintColor = UIColor.green
        }
        label.text = message
    }
    
    var kesempatan = 5
    var jawaban = Int.random(in: 1...25)
    //var jawaban = 2
    func sisaGuess(sisa : String) -> String{
        return "Sisa kesempatan : \(sisa)"
    }
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
    //todo : tambahin suara
    func action_button(jawaban : Int, label : String, outlet_stat : UIButton){
        if (String(jawaban) != label ){
            if (kesempatan > 0 ){
                kesempatan-=1
                changeWarna(stat:"salah", x: outlet_stat, label:labelvalue, message :
                sisaGuess(sisa: String(kesempatan)))
                print("Jawaban benar : " + String(jawaban))
            }
            else{
                changeWarna(stat:"grey", x: outlet_stat, label:labelvalue, message:
                "Kesempatan anda sudah habis")
            }
        }
        else if (String(jawaban) == label && kesempatan > 0){
            changeWarna(stat: "y", x: outlet_stat, label: labelvalue, message: "Selamat, Anda Benar")
            kesempatan=0
        }
        else{
            changeWarna(stat:"grey", x: outlet_stat, label:labelvalue, message:
            "Kesempatan anda sudah habis")
        }

    }
    
    @IBAction func button01(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet01)
    }
    
    @IBAction func button02(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet02)
    }
    
    @IBAction func button03(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet03)
    }
    
    @IBAction func button04(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet04)
        
    }
    @IBAction func button05(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet05)
    }
    @IBAction func button06(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet06)
    }
    @IBAction func button07(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet07)
    }
    @IBAction func button08(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet08)
    }
    @IBAction func button09(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet09)
    }
    @IBAction func button10(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet10)
    }
    
    @IBAction func button11(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet11)
    }
    @IBAction func button12(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet12)
    }
    @IBAction func button13(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet13)
    }
    @IBAction func button14(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet14)
    }
    @IBAction func button15(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet15)
    }
    @IBAction func button16(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet16)
    }
    @IBAction func button17(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet17)
    }
    @IBAction func button18(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet18)
    }
    @IBAction func button19(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet19)
    }
    @IBAction func button20(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet20)
    }
    
    
    @IBAction func button21(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet21)
    }
    @IBAction func button22(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet22)
    }
    @IBAction func button23(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet23)
    }
    @IBAction func button24(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet24)
    }
    @IBAction func button25(_ sender: UIButton) {
        action_button(jawaban: jawaban, label: sender.titleLabel!.text!, outlet_stat: outlet25)
    }
    
    @IBAction func button_reset(_ sender: UIButton) {
        jawaban = Int.random(in: 1...25)
        kesempatan = 5
        changeWarna(stat: "reset", x: outlet01, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet02, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet03, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet04, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet05, label: labelvalue, message: "")
        
        changeWarna(stat: "reset", x: outlet06, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet07, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet08, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet09, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet10, label: labelvalue, message: "")
        
        changeWarna(stat: "reset", x: outlet11, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet12, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet13, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet14, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet15, label: labelvalue, message: "")
        
        changeWarna(stat: "reset", x: outlet16, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet17, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet18, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet19, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet20, label: labelvalue, message: "")
        
        changeWarna(stat: "reset", x: outlet21, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet22, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet23, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet24, label: labelvalue, message: "")
        changeWarna(stat: "reset", x: outlet25, label: labelvalue, message: "Guess 1 correct from 25 square")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
