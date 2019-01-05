//
//  Storage.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2018/12/30.
//  Copyright © 2018年 山田 俊輔. All rights reserved.
//

import Foundation

class Storage {
    static var shared = Storage()
    
    var todoList: [String] {
        get {
            return UserDefaults.standard.stringArray(forKey: "todoList") ?? []
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "todoList")
            UserDefaults.standard.synchronize()
        }
    }

    
    private init() {}
}
