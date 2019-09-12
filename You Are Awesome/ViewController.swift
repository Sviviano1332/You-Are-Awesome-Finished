//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Sophia Viviano on 8/28/19.
//  Copyright © 2019 Sophia Viviano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }


    @IBAction func showMessagePresses(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You Brighten My Day!",
                        "You are da bomb!",
                        "Hey Fabulous!",
                        "You Are Tremendous!",
                        "You have the design skills of Johnny Ive!",
                        "I cant wait to download your app!"]
        

        var newIndex: Int //declares but doesnt initialize new index
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
    }
}

