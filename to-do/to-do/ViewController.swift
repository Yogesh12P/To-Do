//
//  ViewController.swift
//  to-do
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 yogesh. All rights reserved.
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
    
    // to goes the control to the login page...,
    
    override func viewWillAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "loginView", sender: self)
        
    }

}

