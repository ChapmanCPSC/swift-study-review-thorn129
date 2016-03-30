//
//  ViewController.swift
//  A3 Study Stopwatch
//
//  Created by Kyle Thornton on 3/30/16.
//  Copyright © 2016 ThornTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
    var testSubjects:[String] = ["Let vs Var", "Computed Initializers", "Computed Variables", "Setter Observers", "Functions", "External Parameters", "Default Parameters", "Anonymous Functions", "Optional Chaining", "Failable Initializers", "Casting", "Class Methods", "Extensions", "Enumerations", "Error Handling", "Dictionaries", "Conditional Binding", "Protocals", "Inheritance", "Structs", "Enums", "Classes", "Subscripts"]
    
    




    @IBOutlet var topic: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    
    func displayTimer(){
        count += 1
        timeLabel.text = "\(count)"
    }
    
    @IBAction func startTimer(sender: AnyObject) {
        timer.invalidate()
        timeLabel.text = "0"
        count = 0
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
        changeWord()
        
    }
    
    
    func Counting(){
        count += 1
        timeLabel.text  = "\(count)"
        
        if count == 30{
            changeWord()
            count = 0
        }
    }
    
    func changeWord(){
        let randomNumber = Int(arc4random_uniform(23))
        
        topic.text = testSubjects[randomNumber]
        
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

