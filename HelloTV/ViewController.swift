//
//  ViewController.swift
//  HelloTV
//
//  Created by Adrian Knapp on 2/20/16.
//  Copyright © 2016 Adrian Knapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let dateComponents = NSCalendar.currentCalendar().components(.Hour, fromDate: NSDate())
        let hour = dateComponents.hour
        
        let greetingString: String
        switch hour {
        case 0..<12:
            greetingString = "Good Morning"
            
        case 12..<17:
            greetingString = "Good Afternoon"
            
        default:
            greetingString = "Good Evening"
        }
        
        label.text = "\(greetingString), World"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

