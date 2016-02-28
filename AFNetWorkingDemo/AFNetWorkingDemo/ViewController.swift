//
//  ViewController.swift
//  AFNetWorkingDemo
//
//  Created by Abraham on 12/18/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let baseURL = "http://115.159.33.55:8980/carAgent/agent/appConfig_getAppconfig"
        
        let baseURL = "http://192.168.1.101:8080/flamenco/json"
        
        var operationManeger = AFHTTPRequestOperationManager()
        operationManeger.GET(baseURL, parameters: nil, success: { (a:AFHTTPRequestOperation, b:AnyObject) -> Void in
            print("\(b)")
            
            }) { (a:AFHTTPRequestOperation, e:NSError) -> Void in
                NSLog("failure", e.code)
                print("failure\(e.code)\(e.description)")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

