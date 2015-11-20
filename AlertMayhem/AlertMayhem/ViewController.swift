//
//  ViewController.swift
//  AlertMayhem
//
//  Created by kody on 11/3/15.
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

    @IBAction func alertOne(sender: AnyObject) {
        
        let title = "Download Complete"
        let message = "Your download has completed. You can now access the movie on the main menu"
        
        let buttonTitle = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default)
            { _ in
            print("Okay was pressed")
            
            
        }
        alert.addAction(okAction)
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func alertTwo(sender: AnyObject) {
        
        let title = "Error Loading Video"
        let message = "There was a problem loading your video. Please try again."
        
        let okButton = "OK"
        let retryButton = "Retry Download"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: okButton, style: .Default, handler: nil)
        
        let retryAction = UIAlertAction(title: retryButton, style: .Cancel){ _ in
            print("Call code to retry download and probably show a spinner")
        }
        
        alert.addAction(okAction)
        alert.addAction(retryAction)
        
        presentViewController(alert, animated: true, completion: nil )
        
        
    }
    
    @IBAction func alertThree(sender: AnyObject) {
        
        let title = "Are you sure?"
        
        let message = "If you delete this it will be permanently gone. Delete?"
        
        let cancelButton = "Cancel"
        
        let deleteButton = "Delete"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: cancelButton, style: .Cancel, handler: nil )
        
        let deleteAction = UIAlertAction(title: deleteButton, style: .Destructive) { _ in
            print("Run code permanently delete video")
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }

}

