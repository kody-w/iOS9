//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by kody on 10/27/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayOut: UILabel!
    
    
    @IBOutlet weak var textBox: UITextField!
    
    

    
    
    @IBAction func checkGuess(sender: AnyObject) {
        
        let myRandomNumber = String(arc4random_uniform(10) + 1)


        if textBox.text == myRandomNumber {
            
            displayOut.text = "You're right!"
            
        }else {
            
            displayOut.text =  "Wrong! It was a " + myRandomNumber;
        
        }
        
        }
        
        

    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

