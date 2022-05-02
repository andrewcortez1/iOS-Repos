//
//  ViewController.swift
//  14April_NSUserDefault
//
//  Created by IOS on 02/05/22.
//

import UIKit

class ViewController: UIViewController {
    let userdefaults = UserDefaults.standard
    var userScore = 0
    
    
    @IBAction func resetScore(_ sender: UIButton) {
        userScore = 0
        self.userdefaults.set(userScore, forKey : "save_score")
        self.userdefaults.synchronize()
        score.text = String(userScore)
    }
    @IBOutlet weak var score: UILabel!
    @IBAction func addScore(_ sender: UIButton) {
        userScore += 1
        self.userdefaults.set(userScore, forKey : "save_score")
        self.userdefaults.synchronize()
        score.text = String(userScore)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (self.userdefaults.value(forKey: "save_score") != nil){
            userScore = self.userdefaults.value(forKey: "save_score" )as! NSInteger
        }
        score.text = String(userScore)
    }
}
