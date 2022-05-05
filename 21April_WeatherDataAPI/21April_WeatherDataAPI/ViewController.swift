//
//  ViewController.swift
//  21April_WeatherDataAPI
//
//  Created by IOS on 05/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label_temperature: UILabel!
    @IBOutlet weak var label_deskripsi: UILabel!
    @IBOutlet weak var label_kota: UILabel!
    
    @IBOutlet weak var textfield_kota: UITextField!
    
    @IBAction func getWeatherButton(_ sender: UIButton) {
        print("Testing")
        let headers = [
            "X-RapidAPI-Host": "community-open-weather-map.p.rapidapi.com",
            "X-RapidAPI-Key": "6bdc487018msh9d2c22b91d5f2a5p12d457jsn29f7cb6012b3"
        ]
        let citySelection = textfield_kota.text
        let request = NSMutableURLRequest(url: NSURL(string: "https://community-open-weather-map.p.rapidapi.com/weather?q=\(citySelection ?? "Surabaya")&id=2172797&units=metric")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error ?? "")
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse ?? "")
            }
            //buat show data, tidak bisa langsung encode utf8
            if let iniData = data {
                let dataString = String(data : iniData, encoding: .utf8)
                print(dataString ?? "no data available")
                self.parseJSON(weatherData: iniData)
            }
        })

        dataTask.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func parseJSON(weatherData : Data){
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(weatherDataAPI.self, from: weatherData)
            DispatchQueue.main.async {
               
                let suhu = String(decodeData.main.temp)
                let nameCity = String(decodeData.name)
                let nameCountry = String(decodeData.sys.country)
                let descriptionSuhu = String(decodeData.weather[0].description)
                
                print (decodeData.main.temp)
                print(decodeData.name)
                print(decodeData.sys.country)
                print(decodeData.weather[0].main)
                print(decodeData.weather[0].description)
                
                self.label_temperature.text = suhu
                self.label_deskripsi.text = descriptionSuhu
                self.label_kota.text = nameCity + "," + nameCountry
            }
            
        }
        catch{
            print(error)
        }
    }
}

