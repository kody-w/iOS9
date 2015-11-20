//
//  ViewController.swift
//  KeyboardMyKeyboard
//
//  Created by kody on 11/5/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextField.addTarget(self, action: "textChanged:", forControlEvents: UIControlEvents.EditingChanged)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textChanged(theField: UITextField){
        myLabel.text = theField.text
        
    }


}

