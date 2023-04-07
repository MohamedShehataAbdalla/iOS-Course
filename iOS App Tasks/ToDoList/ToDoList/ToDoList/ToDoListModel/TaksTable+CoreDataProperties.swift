//
//  TaksTable+CoreDataProperties.swift
//  ToDoList
//
//  Created by odc on 28/03/2023.
//
//

import Foundation
import CoreData


extension TaksTable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaksTable> {
        return NSFetchRequest<TaksTable>(entityName: "TaksTable")
    }

    @NSManaged public var title: String?
    @NSManaged public var createAt: Date?

}

extension TaksTable : Identifiable {

}
