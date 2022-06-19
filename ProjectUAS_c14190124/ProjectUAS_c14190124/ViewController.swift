//
//  ViewController.swift
//  ProjectUAS_c14190124
//
//  Created by IOS on 13/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var cell_imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var data_crypto = [String]()
    var harga_crypto = [String]()
    var url_image_crypto = [String]()
    var harga_crypto_indonesia = [String]()
    @IBOutlet weak var image_cell: UIImageView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //subtitle ways
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_crypto")! as UITableViewCell
//                cell.textLabel?.text = data_crypto[indexPath.row]
//        let url = NSURL(string:url_image_crypto[indexPath.row])
//            let imagedata = NSData.init(contentsOf: url! as URL)
//
//        if imagedata != nil {
//            cell.imageView?.image = UIImage(data:imagedata! as Data)
//        }
//        cell.detailTextLabel?.text = harga_crypto[indexPath.row]
        //custom ways
        let cell:CustomCryptoCell = self.tableView.dequeueReusableCell(withIdentifier: "cell_crypto") as! CustomCryptoCell
        //kebalik
        cell.judul_crypto.text = harga_crypto_indonesia[indexPath.row]
     
        cell.usd_price.text = data_crypto[indexPath.row]
        
//        cell.idr_price.text = String(convertHarga(from: "USD", to: "IDR", amount: Float(truncating: harga_crypto[indexPath.row] as! NSNumber)))
        
        cell.idr_price.text = harga_crypto[indexPath.row]
        
                let url = NSURL(string:url_image_crypto[indexPath.row])
                    let imagedata = NSData.init(contentsOf: url! as URL)

                if imagedata != nil {
                    cell.imageView?.image = UIImage(data:imagedata! as Data)
                    cell.imageView?.contentMode = .scaleAspectFill
                }
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfSection section : Int) -> Int{
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           //jumlah data yang ditampilkan
           return data_crypto.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        get_cryptoData()
    }
    
    func get_cryptoData(){
        let headers = [
            "X-RapidAPI-Key": "6bdc487018msh9d2c22b91d5f2a5p12d457jsn29f7cb6012b3",
            "X-RapidAPI-Host": "coingecko.p.rapidapi.com"
        ]
        let request = NSMutableURLRequest(url: NSURL(string: "https://coingecko.p.rapidapi.com/coins/markets?vs_currency=usd&page=1&per_page=100&order=market_cap_desc")! as URL,cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
    
        request.httpMethod = "GET"
               request.allHTTPHeaderFields = headers

               let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { [self] (data, response, error) -> Void in
                   if (error != nil) {
                       print(error ?? "")
                   } else {
                       print("Response Print Disabled")
                       //let httpResponse = response as? HTTPURLResponse
                      // print(httpResponse ?? "")
                   }
                   if let json = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [Any] {
                       //print(json)
                       DispatchQueue.main.async {
                           for item in json{
                               do {
                                   if let object = item as? [String: Any] { //arr of any
                                       let name = object["name"] as? String ?? ""
                                       let current_price = object["current_price"] as? Double ?? 0.0
                                       let loc_gambar = object["image"] as? String ?? ""
                                       //print("Nama :" + name)
                                       //print("Loc Gambar :" + loc_gambar)
                                      
                                       let currencyFormatter = NumberFormatter()
                                       currencyFormatter.usesGroupingSeparator = true
                                       currencyFormatter.numberStyle = .currency
                                       currencyFormatter.locale = Locale(identifier:"en_US")
                                       
                                       let cur_price_format = currencyFormatter.string(from: NSNumber(value: current_price))!
//                                      cur_price_format.insert(" ",at: cur_price_format.index(cur_price_format.startIndex, offsetBy: 2))
                                      // print("Price :" + cur_price_format)
                                       harga_crypto.append(cur_price_format)
                                       
                                       currencyFormatter.locale = Locale(identifier: "id_id")
                                       let harga_indonesia : String = String(convertHarga(from: "USD", to: "IDR", amount: Float(truncating: object["current_price"] as! NSNumber)))
                                       //print(harga_indonesia)
                                       data_crypto.append(name)
                                       let double_harga_idr = Double(harga_indonesia)
                                       let cur_price_format_idr = currencyFormatter.string(from: NSNumber(value: double_harga_idr!))

                                       url_image_crypto.append(loc_gambar)
                                      
                                       harga_crypto_indonesia.append(cur_price_format_idr ?? "")
                                   }	
                               }
                           }
                           tableView.reloadData()
                       }
                   }
                   
               })
               dataTask.resume()
    }
}
