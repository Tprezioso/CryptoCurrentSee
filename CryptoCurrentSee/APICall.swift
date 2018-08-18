//
//  APICall.swift
//  
//
//  Created by Thomas Prezioso on 7/25/18.
//

import Foundation
import Alamofire

class APICall: NSObject {

    class func getCurrency(completion:String) {
        Alamofire.request("https://api.coinmarketcap.com/v2/ticker/?limit=10").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value as? [String:AnyObject] {
                // Below is how to get a single crypto currency data
                // Figured out how to get the data from the JSON
                var parsedJSON = json["data"]!["1"]! as? [String: Any]
                for (name, value) in parsedJSON! {
                    print("Name \(name) : Data = \(value)")
                }
                print(parsedJSON!["name"]!)
            }
        }
    }
    
    // TODO: need to search this list by name and then using is idea search the getCurrency func json
    class func listOfCryptoCurrency(completion:([String])) {
        Alamofire.request("https://api.coinmarketcap.com/v2/listings").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result

            // How to get the individual list data
            if let json = response.result.value as? [String :Any] {
                if let listData = json["data"] as? [AnyObject] {
                    print(listData[0]["id"])
                }
//                print("JSON: \(json["data"]!)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}

