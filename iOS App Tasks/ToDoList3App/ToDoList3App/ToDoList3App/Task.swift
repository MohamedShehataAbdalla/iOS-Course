//
//  Task.swift
//  ToDoList3App
//
//  Created by odc on 02/04/2023.
//

import Foundation
import CoreData

@objc(Task)
class Task : NSManagedObject {
    
    @NSManaged var created_at : String!
    @NSManaged var task_name : String!
    
}
