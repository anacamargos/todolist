//
//  DataModel.swift
//  TodoList
//
//  Created by Ana Leticia Camargos on 20/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import Foundation

class DataModel {
    
    class func generateNextTaskID() -> Int {
        
        let userDefaults = UserDefaults.standard
        let nextTaskID = userDefaults.integer(forKey: "TaskID") + 1
        
        userDefaults.set(nextTaskID, forKey: "TaskID")
        userDefaults.synchronize()
        
        return nextTaskID
    }
}
