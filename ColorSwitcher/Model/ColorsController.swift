//
//  ColorsController.swift
//  ColorSwitcher
//
//  Created by Rick Wolter on 1/26/19.
//  Copyright © 2019 RNWolter. All rights reserved.
//

import Foundation

class ColorsController {
    
    
    var colorOn: Bool = false
    var currentColorIndex: Int = 0
    
    var colors: [Color] = [Color(name: "Green", color: .green),
                           Color(name: "Red", color: .red),
                           Color(name: "Orange", color: .orange),
                           Color(name: "yellow", color: .yellow),
                           Color(name: "Blue", color: .blue),
                           Color(name: "Purple", color: .purple),
                           
    ]
    
    var currentColor: Color {
        return colors[currentColorIndex]
    }
    
    
    
    
}
