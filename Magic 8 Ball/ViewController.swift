//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Froedtert Developer on 9/18/18.
//  Copyright © 2018 Froedtert Health. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        //imageView.image = UIImage(named : ballArray[randomBallNumber])
        imageView.image = UIImage(named : "ball/(randomBallNumber")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

}

