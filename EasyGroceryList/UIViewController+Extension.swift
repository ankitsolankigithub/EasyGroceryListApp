//
//  UIViewController+Extension.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

extension UIViewController {
    @IBAction func dimissKeyboard() {
        view.endEditing(true)
    }
}
