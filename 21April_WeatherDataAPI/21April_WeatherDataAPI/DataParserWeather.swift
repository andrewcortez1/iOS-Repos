import Foundation

struct weatherDataAPI : Decodable{
    let name : String
    let main : Temp
    let sys : Country
    let weather : [Weather]
}

struct Temp : Decodable{
    let temp : Double
}

struct Country : Decodable{
    let country : String
}

struct Weather : Decodable{
    let id : Double
    let main : String
    let description : String
}
