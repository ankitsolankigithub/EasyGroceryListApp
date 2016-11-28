//
//  EGListName+CoreDataProperties.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//


import Foundation
import CoreData

extension EGListName {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<EGListName> {
        return NSFetchRequest<EGListName>(entityName: "EGListName");
    }
    
    @NSManaged public var listName: String?
    @NSManaged public var items: NSSet?
    
}
