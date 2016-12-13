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

protocol DismissableKeyboard {
    func dismissKeyboard()
}

extension UIViewController: DismissableKeyboard {
    @IBAction func dismissKeyboard() {
        view.endEditing(true)
    }
}

protocol CloseableController {
    func close()
}

extension UIViewController: CloseableController {
    @IBAction func close() {
        dismiss(animated: UIView.areAnimationsEnabled, completion: nil)
    }
}
