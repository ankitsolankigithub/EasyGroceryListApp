//
//  EGItem+CoreDataProperties.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import Foundation
import CoreData

extension EGItem {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<EGItem> {
        return NSFetchRequest<EGItem>(entityName: "EGItem");
    }
    
    @NSManaged public var name: String?
    @NSManaged public var quantity: Int16
    @NSManaged public var listName: EGListName?
    
}
