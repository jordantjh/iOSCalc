//
//  ViewController.swift
//  sumCalc
//
//  Created by untitled on 6/30/18.
//  Copyright © 2018 untitled. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var n1: UITextField!
    @IBOutlet weak var n2: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var mainSwitch: UISwitch!
    @IBOutlet weak var arithSign: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(mainSwitch.on)
    }

    //actions
    @IBAction func calculateTapped(sender: AnyObject) {
        if mainSwitch.on{
            let res = Double(n1.text!)! + Double(n2.text!)!
            result.text = String(res)
        }else{
            let res = Double(n1.text!)! - Double(n2.text!)!
            result.text = String(res)
        }
    }

    @IBAction func SwitchTapped(sender: AnyObject) {
        if mainSwitch.on{
            arithSign.text="+"
        }else{
            arithSign.text="-"
        }
    }


}

