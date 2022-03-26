//
//  ViewController.swift
//  multiScreen
//
//  Created by Justinus Andjarwirawan on 24/03/22.
//

import UIKit

class ViewController: UIViewController, Kembali {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var teks1: UITextField!
    @IBAction func keLayarDua(_ sender: UIButton) {
        performSegue(withIdentifier: "keDua", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as? SecondViewController
        vc2?.dariSatu = teks1.text ?? ""
        vc2?.delegasi = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func kembaliSatu(param: String) {
        label1.text = param
    }

}

