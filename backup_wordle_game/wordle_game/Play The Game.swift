//
//  Play The Game.swift
//  wordle_game
//
//  Created by IOS on 02/04/22.
//

import UIKit

let answer_array = ["hello", "world", "apple", "allow","begin", "class",
                    "apply", "under", "after", "build","debug", "focus",
                    "learn", "laugh", "think"]
var jawaban = answer_array[Int.random(in: 0...answer_array.count-1)]

class Play_The_Game: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var outlet01: UITextField!
    @IBOutlet weak var outlet02: UITextField!
    @IBOutlet weak var outlet03: UITextField!
    @IBOutlet weak var outlet04: UITextField!
    @IBOutlet weak var outlet05: UITextField!
    @IBOutlet weak var outlet06: UITextField!
    @IBOutlet weak var outlet07: UITextField!
    @IBOutlet weak var outlet08: UITextField!
    @IBOutlet weak var outlet09: UITextField!
    @IBOutlet weak var outlet10: UITextField!
    @IBOutlet weak var outlet11: UITextField!
    @IBOutlet weak var outlet12: UITextField!
    @IBOutlet weak var outlet13: UITextField!
    @IBOutlet weak var outlet14: UITextField!
    @IBOutlet weak var outlet15: UITextField!
    @IBOutlet weak var outlet16: UITextField!
    @IBOutlet weak var outlet17: UITextField!
    @IBOutlet weak var outlet18: UITextField!
    @IBOutlet weak var outlet19: UITextField!
    @IBOutlet weak var outlet20: UITextField!
    @IBOutlet weak var outlet21: UITextField!
    @IBOutlet weak var outlet22: UITextField!
    @IBOutlet weak var outlet23: UITextField!
    @IBOutlet weak var outlet24: UITextField!
    @IBOutlet weak var outlet25: UITextField!
    var x = 1
    
    func changeBG(outlet : UITextField, warna : String){
        if (warna == "hijau"){
            outlet.backgroundColor = UIColor.green
        }
        else if (warna == "merah"){
            outlet.backgroundColor = UIColor.red
        }
        else if (warna == "orange"){
            outlet.backgroundColor = UIColor.orange
        }
    }
    
    func isCorrect(outlet_send : UITextField,cor_answer : String, answer : String, lain : String,  lain2 : String, lain3 : String, lain4 : String){
        if (cor_answer == answer){
            changeBG(outlet: outlet_send, warna: "hijau")
        }
        else if (answer != cor_answer){
            if (answer == lain || answer == lain2 || answer == lain3 || answer == lain4){
             changeBG(outlet: outlet_send, warna: "orange")
            }
            else{
                changeBG(outlet: outlet_send, warna: "merah")
            }
        }
        print("jawaban : " + cor_answer + "jawaban_anda :" + answer)
        print("jawaban 2 : \(lain) + jawaban 3 : \(lain2) + jawaban 4 : \(lain3) + jawaban5: \(lain4)" )
    }
    @IBAction func check_turn(_ sender: UIButton) {
        //let jawaban_00_value = jawaban.startIndex
        let jawaban_char0 = jawaban.index(jawaban.startIndex, offsetBy: 0)
        let jawaban_char1 = jawaban.index(jawaban.startIndex, offsetBy: 1)
        let jawaban_char2 = jawaban.index(jawaban.startIndex, offsetBy: 2)
        let jawaban_char3 = jawaban.index(jawaban.startIndex, offsetBy: 3)
        let jawaban_char4 = jawaban.index(jawaban.startIndex, offsetBy: 4)
        let jawaban_00_string = String(jawaban[jawaban_char0])
        let jawaban_01_value = String(jawaban[jawaban_char1])
        let jawaban_02_value = String(jawaban[jawaban_char2])
        let jawaban_03_value = String(jawaban[jawaban_char3])
        let jawaban_04_value = String(jawaban[jawaban_char4])
        //testing
        //                print("Jawaban kedua : " + jawaban_01_value)
        //                print("Jawaban ketiga : " + jawaban_02_value)
        //                print("Jawaban keempat : " + jawaban_03_value)
        //                print("Jawaban player 1" + outlet01.text! )
        //                print("jawaban player 2 " + outlet02.text!)
        //                print("jawaban player 3:" + outlet03.text!)
        //                print("jawaban player 4:" + outlet04.text!)
        if (x == 6){
            isCorrect(outlet_send: outlet01, cor_answer: jawaban_00_string, answer: outlet01.text!, lain: jawaban_01_value , lain2: jawaban_02_value, lain3: jawaban_03_value , lain4: jawaban_04_value)
            isCorrect(outlet_send: outlet02, cor_answer: jawaban_01_value, answer: outlet02.text!, lain: jawaban_00_string, lain2: jawaban_02_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet03, cor_answer: jawaban_02_value, answer: outlet03.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet04, cor_answer: jawaban_03_value, answer: outlet04.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet05, cor_answer: jawaban_04_value, answer: outlet05.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_03_value)
            
        }
        else if (x == 11){
            isCorrect(outlet_send: outlet06, cor_answer: jawaban_00_string, answer: outlet06.text!, lain: jawaban_01_value , lain2: jawaban_02_value, lain3: jawaban_03_value , lain4: jawaban_04_value)
            isCorrect(outlet_send: outlet07, cor_answer: jawaban_01_value, answer: outlet07.text!, lain: jawaban_00_string, lain2: jawaban_02_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet08, cor_answer: jawaban_02_value, answer: outlet08.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet09, cor_answer: jawaban_03_value, answer: outlet09.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet10, cor_answer: jawaban_04_value, answer: outlet10.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_03_value)
        }
        else if (x == 16){
            isCorrect(outlet_send: outlet11, cor_answer: jawaban_00_string, answer: outlet11.text!, lain: jawaban_01_value , lain2: jawaban_02_value, lain3: jawaban_03_value , lain4: jawaban_04_value)
            isCorrect(outlet_send: outlet12, cor_answer: jawaban_01_value, answer: outlet12.text!, lain: jawaban_00_string, lain2: jawaban_02_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet13, cor_answer: jawaban_02_value, answer: outlet13.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet14, cor_answer: jawaban_03_value, answer: outlet14.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet15, cor_answer: jawaban_04_value, answer: outlet15.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_03_value)
            
        }
        else if (x == 21){
            isCorrect(outlet_send: outlet16, cor_answer: jawaban_00_string, answer: outlet16.text!, lain: jawaban_01_value , lain2: jawaban_02_value, lain3: jawaban_03_value , lain4: jawaban_04_value)
            isCorrect(outlet_send: outlet17, cor_answer: jawaban_01_value, answer: outlet17.text!, lain: jawaban_00_string, lain2: jawaban_02_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet18, cor_answer: jawaban_02_value, answer: outlet18.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet19, cor_answer: jawaban_03_value, answer: outlet19.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet20, cor_answer: jawaban_04_value, answer: outlet20.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_03_value)
        }
        else if (x == 26){
            isCorrect(outlet_send: outlet21, cor_answer: jawaban_00_string, answer: outlet21.text!, lain: jawaban_01_value , lain2: jawaban_02_value, lain3: jawaban_03_value , lain4: jawaban_04_value)
            isCorrect(outlet_send: outlet22, cor_answer: jawaban_01_value, answer: outlet22.text!, lain: jawaban_00_string, lain2: jawaban_02_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet23, cor_answer: jawaban_02_value, answer: outlet23.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_03_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet24, cor_answer: jawaban_03_value, answer: outlet24.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_04_value)
            
            isCorrect(outlet_send: outlet25, cor_answer: jawaban_04_value, answer: outlet25.text!, lain: jawaban_00_string, lain2: jawaban_01_value, lain3: jawaban_02_value, lain4: jawaban_03_value)
        }
        isLimited = false
    }
    var isLimited = false //stopping turn if true
    func changeIsi(outlet_status : UITextField!, val : String){
        outlet_status.text = val
        x+=1
    }
    @IBAction func keebs(_ sender: UIButton) {
        let value = sender.titleLabel!.text!
        if (x==1){
            changeIsi(outlet_status: outlet01, val: value)
        }
        else if (x==2){
            changeIsi(outlet_status: outlet02, val: value)
        }
        else if (x==3){
            changeIsi(outlet_status: outlet03, val: value)
        }
        else if (x==4){
            changeIsi(outlet_status: outlet04, val: value)
        }
        else if (x==5){
            changeIsi(outlet_status: outlet05, val: value)
            isLimited = true
        }
        else if (x==6){
            if (isLimited == false){
                changeIsi(outlet_status: outlet06, val: value)
            }
        }
        else if (x==7){
            changeIsi(outlet_status: outlet07, val: value)
        }
        else if (x==8){
            changeIsi(outlet_status: outlet08, val: value)
        }
        else if (x==9){
            changeIsi(outlet_status: outlet09, val: value)
        }
        else if (x==10){
            changeIsi(outlet_status: outlet10, val: value)
            isLimited = true
        }
        else if (x==11){
            if (isLimited == false){
                changeIsi(outlet_status: outlet11, val: value)
            }
        }
        else if (x==12){
            changeIsi(outlet_status: outlet12, val: value)
        }
        else if (x==13){
            changeIsi(outlet_status: outlet13, val: value)
        }
        else if (x==14){
            changeIsi(outlet_status: outlet14, val: value)
        }
        else if (x==15){
            changeIsi(outlet_status: outlet15, val: value)
            isLimited = true
        }
        else if (x==16){
            if (isLimited == false){
                changeIsi(outlet_status: outlet16, val: value)
            }
        }
        else if (x==17){
            changeIsi(outlet_status: outlet17, val: value)
        }
        else if (x==18){
            changeIsi(outlet_status: outlet18, val: value)
        }
        else if (x==19){
            changeIsi(outlet_status: outlet19, val: value)
        }
        else if (x==20){
            changeIsi(outlet_status: outlet20, val: value)
            isLimited = true
        }
        else if (x==21){
            if (isLimited == false){
                changeIsi(outlet_status: outlet21, val: value)
            }
        }
        else if (x==22){
            changeIsi(outlet_status: outlet22, val: value)
        }
        else if (x==23){
            changeIsi(outlet_status: outlet23, val: value)
        }
        else if (x==24){
            changeIsi(outlet_status: outlet24, val: value)
        }
        else if (x==25){
            changeIsi(outlet_status: outlet25, val: value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(jawaban)
        var jawaban = answer_array[Int.random(in: 0...answer_array.count-1)]
    }
}
