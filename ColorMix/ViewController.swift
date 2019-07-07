//
//  ViewController.swift
//  ColorMix
//
//  Created by murad on 06/07/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        updateColor()
    }

    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        
        if greenSwitch.isOn {
            green = 1
        }
        
        if blueSwitch.isOn {
            blue = 1
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        colorView.backgroundColor = color
        colorView.layer.borderWidth = 1
        colorView.layer.cornerRadius = 10
        colorView.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        updateColor()
        
    }
    
}

