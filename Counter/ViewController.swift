//
//  ViewController.swift
//  Counter
//
//  Created by Michael on 11/23/15.
//  Copyright © 2015 Michael. All rights reserved.
//

import UIKit



func randomCGFloat() -> CGFloat {
    return CGFloat(arc4random()) / CGFloat(UInt32.max)}
    
    extension UIColor {
        static func randomColor() -> UIColor {
            let r = randomCGFloat()
            let g = randomCGFloat()
            let b = randomCGFloat()
            
            // If you wanted a random alpha, just create another
            // random number for that too.
            return UIColor(red: r, green: g, blue: b, alpha: 1.0)
        }
    }






class ViewController: UIViewController {
    
    

    @IBOutlet weak var outputLabel: UILabel!
    
    var currentCount : Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.randomColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    @IBAction func changeColor(sender: UIButton) {
        
        self.view.backgroundColor = UIColor.randomColor()
        
    }
    
    
    
    

    @IBAction func addOneButton(sender: UIButton) {
        
        currentCount = currentCount + 1
        if currentCount == 1 {
            outputLabel.text = "The button has been pushed 1 time."
        }
        else {outputLabel.text = "The button has been pushed \(currentCount) times."}
        outputLabel.textColor = UIColor.whiteColor()
        }

}





