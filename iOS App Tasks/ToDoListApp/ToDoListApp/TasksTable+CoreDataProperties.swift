//
//  TasksTable+CoreDataProperties.swift
//  ToDoListApp
//
//  Created by odc on 01/04/2023.
//
//

import Foundation
import CoreData


extension TasksTable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TasksTable> {
        return NSFetchRequest<TasksTable>(entityName: "TasksTable")
    }

    @NSManaged public var task_name: String?
    @NSManaged public var created_at: Date?

}

extension TasksTable : Identifiable {

}
