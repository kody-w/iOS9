//
//  ViewController.swift
//  Stop Watch
//
//  Created by kody on 11/17/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time = 0
    var timer = NSTimer()


    @IBOutlet weak var timeLabelOut: UILabel!
    
    func increaseTimer(){
        time++
        
        timeLabelOut.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
        
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        
        timer.invalidate()
        
        
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timeLabelOut.text = "0"
        
    }
    
    
  
    
    
    
    
    @IBAction func startTimerButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
        
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

