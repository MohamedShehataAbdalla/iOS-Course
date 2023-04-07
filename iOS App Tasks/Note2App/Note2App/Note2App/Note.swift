//
//  Note.swift
//  Note2App
//
//  Created by odc on 27/03/2023.
//

import CoreData

@objc(Note)
class Note: NSManagedObject{
    
    @NSManaged var title: String!
    @NSManaged var details: String!
    
}
