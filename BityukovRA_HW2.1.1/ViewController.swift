//
//  ViewController.swift
//  BityukovRA_HW2.1.1
//
//  Created by Руслан Битюков on 15.10.2020.
//

import UIKit

enum TrafficColor {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redImageLabel: UIView!
    @IBOutlet weak var yellowImageLabel: UIView!
    @IBOutlet weak var greenImageLabel: UIView!
    @IBOutlet weak var buttomLabel: UIButton!
    
    var trafficColor = TrafficColor.red
    let lightsOn = 1
    let lightsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redImageLabel.layer.cornerRadius = redImageLabel.frame.size.width / 2
        yellowImageLabel.layer.cornerRadius = yellowImageLabel.frame.size.width / 2
        greenImageLabel.layer.cornerRadius = greenImageLabel.frame.size.width / 2
    }

    @IBAction func tapButtom() {
        
        buttomLabel.setTitle("Next", for: .normal)
        
        switch trafficColor {
        case .red:
            redImageLabel.alpha = CGFloat(lightsOn)
            yellowImageLabel.alpha = CGFloat(lightsOff)
            greenImageLabel.alpha = CGFloat(lightsOff)
            trafficColor = .yellow
        case .yellow:
            redImageLabel.alpha = CGFloat(lightsOff)
            yellowImageLabel.alpha = CGFloat(lightsOn)
            greenImageLabel.alpha = CGFloat(lightsOff)
            trafficColor = .green
        case .green:
            redImageLabel.alpha = CGFloat(lightsOff)
            yellowImageLabel.alpha = CGFloat(lightsOff)
            greenImageLabel.alpha = CGFloat(lightsOn)
            trafficColor = .red
        }
        
    }
    
}

