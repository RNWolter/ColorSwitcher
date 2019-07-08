//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Rick Wolter on 1/26/19.
//  Copyright © 2019 RNWolter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
   let colorsController = ColorsController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeColor(_ sender: UIStepper) {
        
        colorsController.currentColorIndex = Int(sender.value.magnitude) % colorsController.colors.count
        updateViews()
    }
    
    @IBAction func toggleColorOn(_ sender: UISwitch) {
         colorsController.colorOn = sender.isOn
        updateViews()
    }
    
   func updateViews(){
    if colorsController.colorOn {
    view.backgroundColor = colorsController.currentColor.color
    label.text = colorsController.currentColor.name
    } else {
    view.backgroundColor = .white
    label.text = nil
    }
    
    }
    @IBOutlet weak var label: UILabel!
    
}

