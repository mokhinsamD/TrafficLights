//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дарина Самохина on 18.09.2022.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    private var currentLight: CurrentLight = .red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    
    @IBAction func startButtonDidPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
            
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
            
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            currentLight = .red
        }
    }
    
}

extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
