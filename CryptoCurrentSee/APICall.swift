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
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
               
            }
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
    
    // TODO: need to search this list by name and then using is idea search the getCurrency func json
    class func listOfCryptoCurrency(completion:([String])) {
        Alamofire.request("https://api.coinmarketcap.com/v2/listings").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
    
//    class func getCurrency(completion: @escaping ([String]) -> void){
//        Alamofire.request("https://api.coinmarketcap.com/v2/listings/").responseJSON { response in
////            self.view.addSubview(hud)
////            if let JSON = response.result.value {
////                let data = JSON as? [String: Any]
////                let status = data?["status"] as! String?
////                self.statusLabel.text = " Status: \(status!.capitalizingFirstLetter())"
////                let date = data?["last_updated"] as! String?
////                self.setBackGroundColorForStatus(status: status!)
////                self.lastUpdatedLabel.text = self.getDateFromJSONDate(dateString: date!)
////                hud.hide(afterDelay: 0.5)
//            }
//        }
}

