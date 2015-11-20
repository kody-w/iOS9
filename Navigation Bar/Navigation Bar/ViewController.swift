//
//  ViewController.swift
//  Navigation Bar
//
//  Created by kody on 11/16/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()
    @IBOutlet weak var timerLabel: UILabel!
    
    func increaseTimer(){
        time++
        
        timerLabel.text = String(time)
    }

    
    @IBAction func play(sender: AnyObject) {
        
 
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
        
    }

    
    

    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
     
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

