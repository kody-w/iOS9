//
//  ViewController.swift
//  Hello World
//
//  Created by kody on 10/20/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func submit(sender: AnyObject) {
        print("Tapped")
        
        label.text = textField.text
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

