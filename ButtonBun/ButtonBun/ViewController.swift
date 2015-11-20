//
//  ViewController.swift
//  ButtonBun
//
//  Created by kody on 11/4/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectedRed(sender: AnyObject) {
        
        self.view.backgroundColor = UIColor.redColor()
        
    }

    @IBAction func selectedBlue(sender: AnyObject) {
        
        self.view.backgroundColor = UIColor.blueColor()
        
    }
}

