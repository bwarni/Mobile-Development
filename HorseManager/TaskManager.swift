//
//  TaskManager.swift
//  Horse Task List
//
//  Created by Michael Warnick on 3/15/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct Task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [Task]()
    
    func addTask(name: String, desc: String){
        tasks.append(Task(name: name, desc: desc))
    }
}
