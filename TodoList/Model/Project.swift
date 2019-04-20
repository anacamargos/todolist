//
//  Project.swift
//  TodoList
//
//  Created by Ana Leticia Camargos on 20/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import Foundation

class Project: NSObject, Codable {
    var name = ""
    var tasks = [Task]()
    var iconName = "Checklist"
    
    init(name: String, iconName: String = "Checklist") {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
    func countUncheckedTasks() -> Int {
        var count = 0
        for task in tasks where !task.isChecked {
            count += 1
        }
        return count
    }
}
