//
//  ViewController.swift
//  SwiftyJson-Alamofire2
//
//  Created by HIRATSUKA SHUNSUKE on 2015/04/03.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func requestData(){
        Alamofire.request(.GET, "http://httpbin.org/get")
            .responseJSON { (request, response, JSON, error) in
                println(JSON)
            }
            .responseString { (request, response, string, error) in
                println(string)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
