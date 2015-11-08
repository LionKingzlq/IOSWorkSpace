//
//  ViewController.swift
//  db
//
//  Created by Abraham on 11/8/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var db:SQLiteDB!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        db = SQLiteDB.sharedInstance()

        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        db.execute("insert into t_user (uname,mobile) values('1','18017304908')")
        // Do any additional setup after loading the view, typically from a nib.
        
        initUser()
    }
    
    //从SQLite加载数据
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1] as SQLRow
            print(user["uname"]!.asString() + user["mobile"]!.asString())
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

