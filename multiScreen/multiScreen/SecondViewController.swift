//
//  SecondViewController.swift
//  multiScreen
//
//  Created by Justinus Andjarwirawan on 24/03/22.
//

import UIKit

protocol Kembali {
    func kembaliSatu(param: String)
}

class SecondViewController: UIViewController {

    var delegasi: Kembali?
    
    @IBAction func button2(_ sender: UIButton) {
        delegasi?.kembaliSatu(param: teks2.text!)
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var teks2: UITextField!
    
    var dariSatu = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = dariSatu
        // Do any additional setup after loading the view.
    }
    
}
