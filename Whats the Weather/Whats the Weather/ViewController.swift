//
//  ViewController.swift
//  Whats the Weather
//
//  Created by kody on 12/20/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    
    @IBAction func findWeather(sender: AnyObject) {
        
        var wasSuccessful = false
        
        let attemptedUrl = NSURL(string: "http://www.weather-forecast.com/locations/" + cityTextField.text!.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        
        if let url = attemptedUrl {
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                //print(webContent)
                
                let websiteArray = webContent!.componentsSeparatedByString("3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                
                if websiteArray.count > 1 {
                    
                    //print(websiteArray![1])
                    
                    
                    
                    let weatherArray = websiteArray[1].componentsSeparatedByString("</span>")
                    
                    if weatherArray.count > 1 {
                        
                        wasSuccessful = true
                        
                        let weatherSummary = weatherArray[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            
                            
                            self.resultLabel.text = weatherSummary
                            
                        })
                        
                        
                        
                        
                    }
                    
                }
                
                
            }
            
            if wasSuccessful == false {
                
                self.resultLabel.text = "Could not find the weather for that city - please try again."
            }
            
        }
        
        task.resume()
            
            
        } else {
            
            self.resultLabel.text = "Could not find the weather for that city - please try again."
        }
        
        
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        
        
        return true
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

