//
//  Task.swift
//  ToDoListApp2
//
//  Created by odc on 01/04/2023.
//

import Foundation
import CoreData

@objc(Task)
class Task: NSManagedObject {
    @NSManaged var task_name: String!
    @NSManaged var created_at: String!
    
}
