//
//  ViewController.swift
//  CryptoCurrentSee
//
//  Created by Thomas Prezioso on 7/23/18.
//  Copyright © 2018 Thomas Prezioso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var jsonData = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        let api = APICall.self
        api.getCurrency(completion: jsonData)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

