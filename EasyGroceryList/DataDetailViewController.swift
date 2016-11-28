//
//  DataDetailViewController.swift
//  EasyGroceryList
//
//  Created by Ankit Solanki on 11/27/16.
//  Copyright © 2016 Ankit Solanki. All rights reserved.
//

import UIKit

class DataDetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var ageLabel: UILabel?
    
    var manager = DataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let item = manager.getSelectedData()
        //nameLabel?.text = item?.name
        //ageLabel?.text = "Age: \(item?.age ?? 0)"
        //descriptionTextView?.text = item?.description
    }
    
}

