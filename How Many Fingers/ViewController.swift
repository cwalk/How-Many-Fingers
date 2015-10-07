//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Walker, Clayton J. on 10/6/15.
//  Copyright © 2015 Walker, Clayton J. All rights reserved.
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
    
    //User enters a number between 0 and 5
    //app generates number between 0 and 5
    //if user is correct, display win, otherwise try again
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var outcomeLabel: UILabel!

    @IBAction func guessButton(sender: UIButton) {
        
        let numFingers = String(arc4random_uniform(6))
        
        if (numFingers == numberField.text) {
            outcomeLabel.text = "You're Right!"
        }
        else {
            outcomeLabel.text = "Wrong, it was a " + numFingers
        }
    }
}

