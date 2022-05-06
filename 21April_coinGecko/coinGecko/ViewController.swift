//
//  ViewController.swift
//  coinGecko
//
//  Created by Justinus Andjarwirawan on 21/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let headers = [
            "X-RapidAPI-Host": "coingecko.p.rapidapi.com",
            //todo change to key pribadi
            "X-RapidAPI-Key": "98828c185amsh21cc5b1b3c3f3e9p195744jsnebb77019dbef"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://coingecko.p.rapidapi.com/coins/markets?vs_currency=usd&page=1&per_page=100&order=market_cap_desc")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                //print(error ?? "")
            } else {
                print("Response Print Disabled")
                //let httpResponse = response as? HTTPURLResponse
                //print(httpResponse ?? "")
            }
            //json serializion kalo data arr
            //extract di loop dibuat any, karena data type dari json macam-macam
            //watch the raw data first
            if let json = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [Any] {
                print(json)
                
                for item in json {
                    if let object = item as? [String: Any] { //arr of any
                        let name = object["name"] as? String ?? ""
                        print(name)
                        let symbol = object["symbol"] as? String ?? ""
                        print(symbol)
                        let current_price = object["current_price"] as? Double ?? 0.0
                        print(current_price)
                    }
                }
            }
        })

        dataTask.resume()
        // Do any additional setup after loading the view.
    }
}
