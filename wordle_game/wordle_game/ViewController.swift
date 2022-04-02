//
//  ViewController.swift
//  wordle_game
//
//  Created by IOS on 02/04/22.
//

import UIKit

class ViewController: UIViewController {

    func pindahSceren(location : String){
        performSegue(withIdentifier: location, sender: self)
    }

    @IBAction func goToPlay(_ sender: UIButton) {
        pindahSceren(location: "segue_play")
    }
    @IBAction func goToHint(_ sender: UIButton) {
        pindahSceren(location: "goToHow" )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

