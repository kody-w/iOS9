//
//  ViewController.swift
//  Table Views
//
//  Created by kody on 11/18/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

