//
//  DataManager.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import CoreData

enum DataError: Error {
    case BadManagedObjectContext(String)
    case BadEntity(String)
}

class DataManager {
    static var shared: DataManager = DataManager()
    
    var managedObjectContext: NSManagedObjectContext?
    var data: [EGListName]
    var dataCount: Int {
        return data.count
    }
    
    var selectedIndex: Int
    
    private init() {
        data = []
        selectedIndex = -1
    }
    
    // MARK: - Get / Create New Data
    
    func create(data: (String?)) throws {
        guard let ctx = managedObjectContext else {
            throw DataError.BadManagedObjectContext("The managed object context was nil")
        }
        guard let entity = NSEntityDescription.entity(forEntityName: "EGListName", in: ctx) else {
            throw DataError.BadEntity("The entity description was bad")
        }
        let obj = EGListName(entity: entity, insertInto: ctx)
        obj.listName = data
        try? save()
    }
    
    func getData(from indexPath: IndexPath) -> (String?)? {
        guard let item = data.value(at: indexPath.row) else {
            return nil
        }
        return (item.listName)
    }
    
    func getSelectedData() -> (String?)? {
        guard let item = data.value(at: selectedIndex) else {
            return nil
        }
        return (item.listName)
    }
    
    // MARK: - Fetching Data
    
    func fetch<T: NSManagedObject>() -> [T] {
        var result: [T]? = nil
        managedObjectContext?.performAndWait { [weak self] in
            do {
                result = try self?.executeFetchRequest()
            }
            catch {
                print(error)
            }
        }
        return result ?? []
    }
    
    private func executeFetchRequest<T: NSManagedObject>() throws -> [T]? {
        let request = T.fetchRequest()
        return try request.execute() as? [T]
    }
    
    func save() throws {
        try managedObjectContext?.save()
    }
}
