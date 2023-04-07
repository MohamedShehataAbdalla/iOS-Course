//
//  ToDoTask.swift
//  ToDoList2App
//
//  Created by odc on 28/03/2023.
//

import CoreData

@objc(ToDoTask)
class ToDoTask : NSManagedObject {
    @NSManaged var task_name: String!
}
