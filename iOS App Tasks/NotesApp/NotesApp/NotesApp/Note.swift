//
//  Note.swift
//  NotesApp
//
//  Created by odc on 26/03/2023.
//

import CoreData

@objc(Note)
class Note: NSManagedObject {
    @NSManaged var create_at: String!
    @NSManaged var title: String!
    @NSManaged var details: String!
}
