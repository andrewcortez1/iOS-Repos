//
//  ViewController.swift
//  14April_tryTableView
//
//  Created by IOS on 02/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var daftar_belanja = ["Daging", "Telur", "Tomat", "Cereal", "Susu",
                          "Coklat", "Coca cola"]
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        //section in table view
//        return 1
//    }
    func tableView(_ tableView: UITableView, numberOfSection section : Int) -> Int{
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //jumlah data yang ditampilkan
        return daftar_belanja.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = daftar_belanja[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //get which data is selected, can use intent, etc in here
        print("Choosed Item: \(daftar_belanja[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        print ("Deleted Item : " + daftar_belanja[indexPath.row] + ", in Index : \(indexPath.row)")
        daftar_belanja.remove(at : indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

