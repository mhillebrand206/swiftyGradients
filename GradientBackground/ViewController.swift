//
//  ViewController.swift
//  GradientBackground
//
//  Created by Fiona Carty on 12/8/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // top : rgb(172,201,255)
        let topColor = UIColor(red: 172/255.0, green: 201/255.0, blue:  255/255.0, alpha: 1.0)
        // bottom : rgb(255,215,190)
        let bottomColor = UIColor(red: 255/255.0, green: 215/255.0, blue: 190/255.0, alpha: 1.0)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 100)
        
    }

    


}

