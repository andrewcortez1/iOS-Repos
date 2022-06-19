//
//  Currency Converter (formula)
//
//  Created by deathlezz on 6/08/2021.
// Reference From :
//https://github.com/deathlezz/Currency-Converter-Swift-5/blob/main/formula.swift
//https://api.frankfurter.app/latest?from=USD
//dengan sedikit editt, returning to string
import Foundation

// specify how the json file looks like
struct Json: Codable {
    let base: String
    let rates: [String: Float]
}

// create function
func convertHarga(from: String, to: String, amount: Float) -> String{

    // create url
    let url = URL(string: "https://api.frankfurter.app/latest?from=\(from)")
    
    do {
        // make http GET call
        let contents = try String(contentsOf: url!)

        // specify decoding format
        let data = contents.data(using: .utf8)

        // decode json data
        let ratesData = try JSONDecoder().decode(Json.self, from: data!)

        // multiply amount by rate
        let calculate = amount * ratesData.rates[to]!
        
        // output
        print("\(amount) \(from) = \(calculate) \(to)")
        print("Rate: \(ratesData.rates[to]!)")
        return String(calculate)
        
    } catch {
        print("* Connection error *")
    }
    return "nodata"
}


// 10.0 GBP = 53.498997 PLN
// Rate: 5.3499
