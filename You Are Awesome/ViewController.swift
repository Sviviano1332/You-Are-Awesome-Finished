//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Sophia Viviano on 8/28/19.
//  Copyright © 2019 Sophia Viviano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }


    @IBAction func showMessagePresses(_ sender: UIButton) {
        messageLabel.text="You Are Awesome!"
        
    }
}

