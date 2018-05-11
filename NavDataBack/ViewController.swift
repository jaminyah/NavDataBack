//
//  ViewController.swift
//  NavDataBack
//
//  Created by Macbook on 5/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataModel = DataModel(animals: [])
    weak var delegate: Delegate?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: Any) {
        guard let newAnimal = textField.text, newAnimal != "" else {
            print("Animal field is empty")
            return
        }
        
        dataModel.animals.append(newAnimal)
        print("submit: \(dataModel.animals)")
        
        // Clear the textField afterwards
        textField.text = ""
    }
    
    // Navigation bar back button action
    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            self.delegate?.updateData(animals: dataModel.animals)
        }
    }
    
} // class
