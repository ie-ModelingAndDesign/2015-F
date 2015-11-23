//
//  UserSetting.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation



class AppSetting {
    let ud = NSUserDefaults.standardUserDefaults()
    

    
    
    // set default settings here
    private struct Default {
        static let name: String = "タロー"
        static let age: Int = 20
        
    }
    
    // computed properties as class variables
    var name: String {
        get {
            return ud.objectForKey("name") as! String
        }
        set(newValue) {
            ud.setObject(newValue, forKey: "name")
            ud.synchronize()
        }
    }
    
    
    
    var list: [String] {
        get {
            print(ud.arrayForKey("list"))
            return ud.arrayForKey("list") as! [String]
        }
        
        set(newValue) {
            ud.setObject(newValue, forKey: "list")
            print(ud.objectForKey("list")! as! [String])
            ud.synchronize()
        }
    }
    
    
    var age: Int {
        get {
        ud.registerDefaults(["age": Default.age])
        return ud.objectForKey("age") as! Int
        }
        set(newValue) {
            ud.setObject(newValue, forKey: "age")
            ud.synchronize()
        }
    }
}
