//
//  Task.swift
//  TodoList
//
//  Created by Ana Leticia Camargos on 20/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import Foundation

class Task: NSObject, Codable {
    var text = ""
    var isChecked = false
    var dueDate = Date()
    var shouldRemind = false
    var taskID: Int
    
    override init() {
        taskID = DataModel.generateNextTaskID()
    }
    
    func toggleChecked() {
        isChecked = !isChecked
    }
    
}
