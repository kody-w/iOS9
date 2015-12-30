//
//  ViewController.swift
//  Control the Keyboard
//
//  Created by kody on 11/19/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelDisplay: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    @IBAction func buttonPress(sender: AnyObject) {
        
        
        //labelDisplay.text = textInput.text!
        
        
        labelDisplay.text = textInput.text
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
}

