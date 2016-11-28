//
//  AddItemDataViewController.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

class AddItemDataViewController: UIViewController {
    
    @IBOutlet var listNameField: UITextField?
    
    @IBOutlet var itemName: UITextField!
    
    
    @IBOutlet var itemQuantity: UITextField!
    
    let manager = DataManager.shared
    
    @IBAction func addItem() {
        try? manager.create(data: (listNameField?.text))
        dismiss(animated: UIView.areAnimationsEnabled, completion: nil)
    }
}




