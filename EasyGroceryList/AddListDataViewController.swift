//
//  AddListDataViewController.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

class AddListDataViewController: UIViewController {
    
    @IBOutlet var listNameField: UITextField?
    
    let manager = DataManager.shared
    
    @IBAction func add() {
        try? manager.create(data: (listNameField?.text))
        dismiss(animated: UIView.areAnimationsEnabled, completion: nil)
    }
}


extension String {
    var integer: Int? {
        return Int(self)
    }
}
