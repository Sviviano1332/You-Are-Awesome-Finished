//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Sophia Viviano on 8/28/19.
//  Copyright © 2019 Sophia Viviano. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var awesomePlayer =  AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 4
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }
    
    func nonRepeatingRandon(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }

    func playSound(soundName: String) {
        //can we load the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a sound file
            
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
        } else {
            //if reading in the NSDataAsset didn't work, tell the developer/report an error
            print("ERROR file: \(soundName) didn't load")
        }

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
        
        
        
        // show a message
        index = nonRepeatingRandon(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // show an image
        imageIndex = nonRepeatingRandon(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        // Get a random number to use in our soundName file
        soundIndex = nonRepeatingRandon(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        // play a sound
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
    }
}

